use strict;
use warnings FATAL => 'all';
<<'HEREDOC_CONFIG'
Building configuration...

Current configuration:
!
version 12.0
service timestamps debug uptime
service timestamps log datetime
service password-encryption
service udp-small-servers
service tcp-small-servers
!
hostname C2
!
logging buffered 10000 debugging
logging monitor informational
aaa new-model
aaa authentication login default local
enable secret 5 $1$MJ5P$d2vqIdM3F0oyMy/EqpeTb/
!
username cisco password 7 060506324F41
username lab password 7 073F2E4F62081B
username ngnms password 7 030B4B1F091C32
ip subnet-zero
no ip domain-lookup
!
!
interface Loopback0
 description C2-RouterID
 ip address 10.2.2.2 255.255.255.255
 no ip directed-broadcast
 no ip route-cache
 no ip mroute-cache
!
interface Ethernet0
 no ip address
 no ip directed-broadcast
 no ip route-cache
 no ip mroute-cache
 shutdown
!
interface Serial0
 no ip address
 no ip directed-broadcast
 no ip route-cache
 no ip mroute-cache
 shutdown
 clockrate 2000000
!
interface Serial1
 description E1 C2<->C1
 ip address 20.0.1.2 255.255.255.252
 no ip directed-broadcast
 no ip route-cache
 no ip mroute-cache
!
router ospf 1
 log-adjacency-changes
 network 10.0.0.0 0.255.255.255 area 0
 network 20.0.0.0 0.255.255.255 area 0
!
router bgp 500
 bgp log-neighbor-changes
 redistribute connected
 neighbor 20.0.1.1 remote-as 100
 neighbor 20.0.1.1 version 4
 no auto-summary
!
ip default-gateway 20.0.1.1
ip classless
ip route 0.0.0.0 0.0.0.0 20.0.1.1
!
logging history size 500
logging source-interface Loopback0
logging 192.168.3.117
logging 192.168.3.120
logging 192.168.3.105
!
snmp-server community public RO
snmp-server trap-source Loopback0
snmp-server location 'OPT/NET GARAGE'
snmp-server contact TM
snmp-server enable traps config
snmp-server enable traps entity
snmp-server enable traps bgp
snmp-server enable traps frame-relay
snmp-server enable traps rtr
snmp-server host 192.168.3.117 traps version 2c public
snmp-server host 192.168.3.120 traps version 2c public
snmp-server host 192.168.3.105 traps version 2c public
!
line con 0
 session-timeout 30  output
 exec-timeout 30 0
 transport input none
line aux 0
 transport input all
line vty 0 4
 password 7 060506324F41
!
end
HEREDOC_CONFIG