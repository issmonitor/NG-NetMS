#!/usr/bin/env bash

# make link to custom location of /etc/cron.d if provided
if [ "${CRON_PATH}" ]; then
    echo "CRON_PATH provided, creating link: /etc/cron.d -> ${CRON_PATH}"
    ln -sf "${CRON_PATH}" /etc/cron.d
fi

# remove write permission for (g)roup and (o)ther (required by cron)
chmod -R go-w /etc/cron.d

# setting user for additional cron jobs
case $1 in
-u=*|--user=*)
    CRONTAB_USER="-u ${1#*=}"
    shift
    ;;
-u|--user)
    CRONTAB_USER="-u $2"
    shift 2
    ;;
-*)
    echo "Unknown option: ${1%=*}" > /dev/stderr
    exit 1
    ;;
*)
    CRONTAB_USER=""
    ;;
esac

# adding additional cron jobs passed by arguments
# every job must be a single quoted string and have standard crontab format,
# e.g.: start-cron --user user "0 \* \* \* \* env >> /var/log/cron.log 2>&1"
{ for CRON_JOB in "$@"; do echo -e ${CRON_JOB}; done } \
    | sed --regexp-extended 's/\\(.)/\1/g' \
    | crontab ${CRONTAB_USER} -

# update default values of PAM environment variables (used by CRON scripts)
env | while read -r LINE; do  # read STDIN by line
    # split LINE by "="
    IFS="=" read VAR VAL <<< ${LINE}
    # remove existing definition of environment variable, ignoring exit code
    sed --in-place "/^${VAR}\s/d" /etc/security/pam_env.conf || true
    # append new default value of environment variable
    echo "${VAR} DEFAULT=\"${VAL}\"" >> /etc/security/pam_env.conf
done

#add NGNMS Scheduler
crontab -u  `whoami`  $HOME/crontab.init

# start cron
service cron start

# trap SIGINT and SIGTERM signals and gracefully exit
trap "service cron stop; kill \$!; exit" SIGINT SIGTERM

# start "daemon"
while true
do
    # watch /var/log/cron.log restarting if necessary
    cat /var/log/cron.log & wait $!
done