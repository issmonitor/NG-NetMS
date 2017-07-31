#!/bin/sh
. /lib/lsb/init-functions
### BEGIN INIT INFO
# Provides:          jm-worker.pl
# Required-Start:    $local_fs $remote_fs $network $rsyslog $named
# Required-Stop:     $local_fs $remote_fs $network $rsyslog $named
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# X-Interactive:     true
# Short-Description: Start/stop jm-worker.pl on NG-NetMS server
# Description:       Starts the job machine worker required by NG-NetMS server
#                    This script will start jm-worker.pl from NG-NetMS server package
### END INIT INFO

DESC="NG-NetMS job machine server"
NAME=jm-worker.pl
DAEMON=/usr/bin/perl 
VERBOSE=no
# set to 'yes' for verbose logging
#  --- end of editable section ---


DAEMON_OPTS=/opt/ngnms/bin/$NAME
PIDFILE=/var/run/$NAME.pid
LOGFILE=/var/log/$NAME.log
CONFDIR=""


SCRIPTNAME="${0##*/}"

if [ -n "$CONFDIR" ] ; then
	if [ "${CONFDIR##/opt/ngnms-}" != "${CONFDIR}" ] ; then
	        DIR_SUFFIX="${CONFDIR##/opt/ngnms-}"
	else
	        DIR_SUFFIX=
	fi
else
	DIR_SUFFIX=
	CONFDIR=/etc
	ENVVARS=$CONFDIR/environment
fi

#echo "DIR is:$DIR_SUFFIX"
#echo "Config DIR is:$CONFDIR"
#echo "ENVVARS are:$ENVVARS"


[ -f $ENVVARS ] && . $ENVVARS


if [ -z "$NGNMS_HOME" ] ;  then
   log_failure_msg "NGNMS_HOME variable is not set, please set it in $ENVVAR"
  exit 1
fi

print_error_msg() {
	[ -z "$DAEMON_INIT_MESSAGE" ] || log_warning_msg "$DAEMON_INIT_MESSAGE"
}

daemon_wait_start() {
	local STATUS=$1
	local i=0
	while : ; do
	        PIDTMP=$(pidofproc $DAEMON)
	        if [ -n "${PIDTMP:-}" ] && kill -0 "${PIDTMP:-}" 2> /dev/null; then
	                return $STATUS
	        fi

	        if [ $i = "20" ] ; then
	                DAEMON_INIT_MESSAGE="The $NAME instance did not start within 20 seconds. Please read the $LOGFILE file to discover problems"
	                return 2
	        fi

	        [ "$VERBOSE" != no ] && log_progress_msg "."
	        sleep 1
	        i=$(($i+1))
	done
}


#
# Function that starts the daemon/service
#
do_start()
{
	# Return
	#   0 if daemon has been started
	#   1 if daemon was already running
	#   2 if daemon could not be started

	if pidofproc "$DAEMON" > /dev/null 2>&1 ; then
	        return 1
	fi
            touch "$LOGFILE"
            
            start-stop-daemon --start --background \
			--no-close \
			--exec "$DAEMON" \
			--pidfile "$PIDFILE" \
			--make-pidfile \
			-- \
				$DAEMON_OPTS \
			>> "$LOGFILE" 2>&1  
            
	        daemon_wait_start $?
	        return $?

}

#
# Function that stops the daemon/service
#
do_stop()
{
	# Return
	#   0 if daemon has been stopped
	#   1 if daemon was already stopped
	#   2 if daemon could not be stopped
	#   other if a failure occurred

	# either "stop" or "graceful-stop"
	local STOP=$1
	# can't use pidofproc from LSB here
	local P_RET=0

    start-stop-daemon --stop --pidfile "$PIDFILE" --retry 10
}



case "$1" in
  start)
	log_daemon_msg "Starting $DESC" "$NAME"
	do_start
	RET_STATUS=$?
	case "$RET_STATUS" in
		0|1)
			log_success_msg
			[ "$VERBOSE" != no ] && [ $RET_STATUS = 1 ] && log_warning_msg "$NAME was already running"
	        ;;
		2)
			log_failure_msg
			print_error_msg
			exit 1
			;;
	esac
	;;
  stop|graceful-stop)
	log_daemon_msg "Stopping $DESC" "$NAME"
	do_stop "$1"
	RET_STATUS=$?
	case "$RET_STATUS" in
		0|1)
			log_success_msg
			[ "$VERBOSE" != no ] && [ $RET_STATUS = 1 ] && log_warning_msg "$NAME was not running"
	        ;;
		2)
			log_failure_msg
			print_error_msg
			exit 1
	        ;;
	esac
	print_error_msg

	;;
  status)
        status_of_proc -p "$PIDFILE" "$NAME" "$DESC"
        pidofproc "$DAEMON"
	exit $?
	;;
  reload|force-reload)
	log_daemon_msg "Reloading $DESC" "$NAME"
	do_reload
	RET_STATUS=$?
	case "$RET_STATUS" in
		0|1)
			log_success_msg
			[ "$VERBOSE" != no ] && [ $RET_STATUS = 1 ] && log_warning_msg "$NAME was already running"
			;;
		2)
			log_failure_msg
			print_error_msg
			exit 1
			;;
	esac
	print_error_msg
	;;
  restart)
	log_daemon_msg "Restarting $DESC" "$NAME"
	do_stop stop
	case "$?" in
		0|1)
			do_start
			case "$?" in
				0)
					log_end_msg 0
					;;
				1|*)
					log_end_msg 1 # Old $NAME process has stuck or failed to run
					print_error_msg
					exit 1
					;;
			esac
			;;
		*)
			# Failed to stop
			log_end_msg 1
			print_error_msg
			exit 1
			;;
	esac
	;;

  *)
	echo "Usage: $SCRIPTNAME {start|stop|graceful-stop|restart|reload|force-reload}" >&2
	exit 3
	;;
esac

exit 0