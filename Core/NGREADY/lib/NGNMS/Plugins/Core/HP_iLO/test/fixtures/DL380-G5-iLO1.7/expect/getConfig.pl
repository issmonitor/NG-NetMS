use warnings FATAL => 'all';
use strict;
'status=0
status_tag=COMMAND COMPLETED


/map1/settings1
  Targets
    DNSSettings1
      Properties
        DNSServerAddress=0
        RegisterThisConnection=yes
        DomainName=dynamic.ziggo.nl
        DHCPOptionToUse=no
      Verbs
        cd version exit show set
    WINSSettingData1
      Properties
        WINSServerAddress=0.0.0.0, 0.0.0.0
        RegisterThisConnection=no
        DHCPOptionToUse=yes
      Verbs
        cd version exit show set
    StaticIPSettings1
      Properties
        oemhp_SRoute1Address=0.0.0.0
        oemhp_Gateway1Address=0.0.0.0
        oemhp_SRoute2Address=0.0.0.0
        oemhp_Gateway2Address=0.0.0.0
        oemhp_SRoute3Address=0.0.0.0
        oemhp_Gateway3Address=0.0.0.0
        DHCPOptionToUse=yes
      Verbs
        cd version exit show set
  Properties
  Verbs
    cd version exit show set

---
status=0
status_tag=COMMAND COMPLETED


/map1/config1
  Targets
  Properties
    oemhp_mapenable=yes
    oemhp_timeout=30 minutes
    oemhp_passthrough=enabled
    oemhp_rbsuenable=yes
    oemhp_rbsulogin=no
    oemhp_rbsushowip=yes
    oemhp_telnetenable=yes
    oemhp_httpport=80
    oemhp_sslport=443
    oemhp_rcport=23
    oemhp_vmport=17988
    oemhp_tsport=3389
    oemhp_sshport=22
    oemhp_sshstatus=yes
    oemhp_serialclistatus=yes
    oemhp_serialcliauth=yes
    oemhp_serialclispeed=9600 bits/sec
    oemhp_minpwdlen=6
    oemhp_hotkey_t=NONE
    oemhp_hotkey_u=NONE
    oemhp_hotkey_v=NONE
    oemhp_hotkey_w=NONE
    oemhp_hotkey_x=NONE
    oemhp_hotkey_y=NONE
    oemhp_high_perf_mouse=automatic
    oemhp_enforce_aes=no
    oemhp_authfailurelogging=1
    oemhp_computer_lock=disabled
    oemhp_rawvspport=3002
    oemhp_console_capture_port=17990
    oemhp_console_capture_enable=yes
    oemhp_interactive_console_replay_enable=no
    oemhp_capture_auto_export_enable=no
    oemhp_capture_auto_export_location=http://192.168.1.1/folder/capture%t.ilo
    oemhp_capture_auto_export_username=0
    oemhp_capture_auto_export_password=0
    oemhp_console_capture_boot_buffer_enable=yes
    oemhp_console_capture_fault_buffer_enable=no
    oemhp_shared_console_enable=yes
    oemhp_shared_console_port=0
    oemhp_key_up_key_down_enable=yes
  Verbs
    cd version exit show set oemhp_loadSSHkey
';