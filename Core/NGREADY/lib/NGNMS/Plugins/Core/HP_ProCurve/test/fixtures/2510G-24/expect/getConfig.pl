use warnings FATAL => 'all';
use strict;
'

Running configuration:


; J9279A Configuration Editor; Created on release #Y.11.08


hostname "HP_switch"

snmp-server contact "TM"

snmp-server location "GARAGE"

interface 1

   name "port 2 used"

exit

ip default-gateway 192.168.3.1

sntp server 192.168.3.1

timesync sntp

logging facility local0

logging 192.168.3.120

snmp-server community "public" Unrestricted

snmp-server host 192.168.3.117 "public" All

snmp-server host 192.168.3.120 "public" All

vlan 1

   name "DEFAULT_VLAN"

   untagged 1-24

   ip address 192.168.3.210 255.255.255.0

   exit

vlan 101

   name "101 VLANNAME"

   ip address 101.101.101.101 255.255.255.0

   exit

banner motd "****************** THIS IS OUR BANNER ********************

""

snmp-server trap-source 192.168.3.210

ip ssh

ip ssh timeout 60

password manager

password operator
';