use strict;
use warnings FATAL => 'all';
'
Current configuration : 18113 bytes
!
! Last configuration change at 12:08:32 EET Fri Sep 23 2016 by provider
! NVRAM config last updated at 12:08:34 EET Fri Sep 23 2016 by provider
!
upgrade fpd auto
version 12.2
service timestamps debug uptime
service timestamps log uptime
service password-encryption
service counters max age 5
service unsupported-transceiver
!
hostname brabus
!
boot-start-marker
boot system flash disk0:s72033-advipservicesk9_wan-mz.122-33.SXI13.bin
boot-end-marker
!
enable password 7 asdfasdfasdf
!
username provider privilege 15 password 7 asdfasdfasdf
no aaa new-model
clock timezone EET 2
clock summer-time EET recurring last Sun Mar 2:00 last Sun Oct 3:00
!
!
!
ip multicast-routing
no ip domain-lookup
ip domain-name provider.net.ua
ip name-server 109.72.122.42
ip name-server 109.72.122.33
vtp domain core
vtp mode off
no mls acl tcam share-global
mls netflow interface
mls rate-limit unicast cef receive 10000 100
mls cef error action freeze
mls cef maximum-routes ip 768
!
!
!
!
!
!
!
!
!
!
spanning-tree mode pvst
spanning-tree portfast edge default
spanning-tree portfast edge bpduguard default
spanning-tree portfast edge bpdufilter default
spanning-tree extend system-id
no spanning-tree vlan 1-4094
diagnostic bootup level minimal
no errdisable detect cause gbic-invalid
access-list 10 permit 109.72.122.130
access-list 10 remark CONSOLE
access-list 10 permit 109.72.122.32 0.0.0.31
access-list 16 remark SNMP RO
access-list 16 permit 109.72.122.46
access-list 16 permit 109.72.122.33
access-list 16 permit 109.72.122.130
!
redundancy
 main-cpu
  auto-sync running-config
 mode sso
!
vlan internal allocation policy ascending
vlan access-log ratelimit 2000
!
vlan 13
 name HITLINE
!
vlan 100
 name CoreLan
!
vlan 201
 name OCHADNET
!
vlan 203
 name FTICOM-INET
!
vlan 204
 name OCHADDON
!
vlan 211
 name Officeprovider
!
vlan 214
 name SIGMA
!
vlan 252
 name RealTransHolding
!
vlan 301
 name DOCSIS
!
vlan 400
 name VEGA
!
vlan 445
 name DATAGROUP-INTERNET
!
vlan 500
 name Altair_Awitch_Net
!
vlan 507
 name MGUKRAINA
!
vlan 514
 name Altair_Client_514
!
vlan 516
 name Altair_Client_516
!
vlan 600
 name IPTV-ALTAIR-MAR
!
vlan 1332
 name ITS-Internet
!
vlan 1333
 name ITS-KIEV-TV-TRANSIT
!
vlan 2100
 name MAR-IX
!
vlan 2333
 name ITS-KIEV-FAKE
!
vlan 2959
 name KRASN_TV
!
vlan 2961
 name CASNET
!
vlan 2966
 name PIM-VLAN-KIEV
!
vlan 2967
 name PIM-VLAN-ALTAIRMAR
!
vlan 2970
 name ASTRA
!
!
!
!
!
interface Loopback0
 ip address 192.168.55.100 255.255.255.255
 no ip proxy-arp
 ip pim sparse-dense-mode
!
interface Port-channel2
 description LACP to ALTAIR
 switchport
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 100,201,204,252,301,500,514,516,600,2967
 switchport mode trunk
 arp timeout 900
!
interface GigabitEthernet2/1
 description ALTAIR-AGG-1
 switchport
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 100,201,204,252,301,500,514,516,600,2967
 switchport mode trunk
 arp timeout 900
 channel-protocol lacp
 channel-group 2 mode active
!
interface GigabitEthernet2/2
 description ALTAIR-AGG-2
 switchport
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 100,201,204,252,301,500,514,516,600,2967
 switchport mode trunk
 arp timeout 900
 channel-protocol lacp
 channel-group 2 mode active
!
interface GigabitEthernet2/3
 description ALTAIR-AGG-3
 switchport
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 100,201,204,252,301,500,514,516,600,2967
 switchport mode trunk
 arp timeout 900
 channel-protocol lacp
 channel-group 2 mode active
!
interface GigabitEthernet2/4
 description ALTAIR-AGG-4
 switchport
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 100,201,204,252,301,500,514,516,600,2967
 switchport mode trunk
 arp timeout 900
 channel-protocol lacp
 channel-group 2 mode active
!
interface GigabitEthernet2/5
 description ALTAIR_GUGELYA_22
 switchport
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 500,514,600
 switchport mode trunk
!
interface GigabitEthernet2/6
 description ALTAIR_ADARYUKOV_CH
 switchport
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 500,516,600
 switchport mode trunk
!
interface GigabitEthernet2/7
 description FTCOM 1G IPTV
 switchport
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 2959,2961
 switchport mode trunk
!
interface GigabitEthernet2/8
 description MTKVEGA
 switchport
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 201,400
 switchport mode trunk
!
interface GigabitEthernet2/9
 no ip address
 shutdown
!
interface GigabitEthernet2/10
 no ip address
 shutdown
!
interface GigabitEthernet2/11
 no ip address
 shutdown
!
interface GigabitEthernet2/12
 no ip address
 shutdown
!
interface GigabitEthernet2/13
 no ip address
 shutdown
!
interface GigabitEthernet2/14
 no ip address
 shutdown
!
interface GigabitEthernet2/15
 no ip address
 shutdown
!
interface GigabitEthernet2/16
 no ip address
 shutdown
!
interface GigabitEthernet2/17
 no ip address
 shutdown
!
interface GigabitEthernet2/18
 no ip address
 shutdown
!
interface GigabitEthernet2/19
 no ip address
 shutdown
!
interface GigabitEthernet2/20
 no ip address
 shutdown
!
interface GigabitEthernet2/21
 no ip address
 shutdown
!
interface GigabitEthernet2/22
 no ip address
 shutdown
!
interface GigabitEthernet2/23
 no ip address
 shutdown
!
interface GigabitEthernet2/24
 no ip address
 shutdown
!
interface TenGigabitEthernet3/1
 description ITS-RTPC-PEER
 switchport
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 1332,1333
 switchport mode trunk
 mtu 9216
!
interface TenGigabitEthernet3/2
 description FTICOM
 switchport
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 203,204
 switchport mode trunk
!
interface TenGigabitEthernet3/3
 description DATAGROUP
 switchport
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 2959,2961
 switchport mode trunk
!
interface TenGigabitEthernet3/4
 description Uplink to JUN41
 switchport
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 100,201,204,301,400,2100,2959,2961,2970
 switchport mode trunk
!
interface GigabitEthernet4/1
 no ip address
 shutdown
!
interface GigabitEthernet4/2
 no ip address
 shutdown
!
interface GigabitEthernet4/3
 no ip address
 shutdown
!
interface GigabitEthernet4/4
 no ip address
 shutdown
!
interface GigabitEthernet4/5
 description SIGMA
 switchport
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 214
 switchport mode trunk
!
interface GigabitEthernet4/6
 description HITLINE
 switchport
 switchport access vlan 13
 switchport mode access
!
interface GigabitEthernet4/7
 description TRANSCODING-COMP 109.72.122.156
 switchport
 switchport access vlan 2959
 switchport mode access
!
interface GigabitEthernet4/8
 description ZYX-SWITCH-IPTV 10.230.132.77
 switchport
 switchport access vlan 2959
 switchport mode access
!
interface GigabitEthernet4/9
 description ITS-KIEV-TRANSIT encapsulation port
 switchport
 switchport access vlan 1333
 switchport mode dot1q-tunnel
 switchport nonegotiate
 no cdp enable
 spanning-tree bpdufilter enable
 spanning-tree bpduguard enable
!
interface GigabitEthernet4/10
 description ITS-KIEV-TRANSPORT-qIq-encapsulation-port
 switchport
 switchport trunk encapsulation dot1q
 switchport trunk allowed vlan 507,2966
 switchport mode trunk
 no cdp enable
 no lldp transmit
 no lldp receive
!
interface GigabitEthernet4/11
 description Ripe Atlas probe
 switchport
 switchport access vlan 100
 switchport mode access
!
interface GigabitEthernet4/12
 no ip address
 shutdown
!
interface GigabitEthernet4/13
 no ip address
 shutdown
!
interface GigabitEthernet4/14
 no ip address
 shutdown
!
interface GigabitEthernet4/15
 no ip address
 shutdown
!
interface GigabitEthernet4/16
 no ip address
 shutdown
!
interface GigabitEthernet4/17
 no ip address
 shutdown
!
interface GigabitEthernet4/18
 no ip address
 shutdown
!
interface GigabitEthernet4/19
 no ip address
 shutdown
!
interface GigabitEthernet4/20
 no ip address
 shutdown
!
interface GigabitEthernet4/21
 no ip address
 shutdown
!
interface GigabitEthernet4/22
 no ip address
 shutdown
!
interface GigabitEthernet4/23
 no ip address
 shutdown
!
interface GigabitEthernet4/24
 no ip address
 shutdown
!
interface GigabitEthernet4/25
 no ip address
 shutdown
!
interface GigabitEthernet4/26
 no ip address
 shutdown
!
interface GigabitEthernet4/27
 no ip address
 shutdown
!
interface GigabitEthernet4/28
 no ip address
 shutdown
!
interface GigabitEthernet4/29
 no ip address
 shutdown
!
interface GigabitEthernet4/30
 no ip address
 shutdown
!
interface GigabitEthernet4/31
 no ip address
 shutdown
!
interface GigabitEthernet4/32
 no ip address
 shutdown
!
interface GigabitEthernet4/33
 no ip address
 shutdown
!
interface GigabitEthernet4/34
 no ip address
 shutdown
!
interface GigabitEthernet4/35
 no ip address
 shutdown
!
interface GigabitEthernet4/36
 no ip address
 shutdown
!
interface GigabitEthernet4/37
 no ip address
 shutdown
!
interface GigabitEthernet4/38
 no ip address
 shutdown
!
interface GigabitEthernet4/39
 no ip address
 shutdown
!
interface GigabitEthernet4/40
 no ip address
 shutdown
!
interface GigabitEthernet4/41
 no ip address
 shutdown
!
interface GigabitEthernet4/42
 no ip address
 shutdown
!
interface GigabitEthernet4/43
 no ip address
 shutdown
!
interface GigabitEthernet4/44
 no ip address
 shutdown
!
interface GigabitEthernet4/45
 no ip address
 shutdown
!
interface GigabitEthernet4/46
 no ip address
 shutdown
!
interface GigabitEthernet4/47
 no ip address
 shutdown
!
interface GigabitEthernet4/48
 description TEST 507 vlan
 switchport
 switchport access vlan 2970
 switchport mode access
!
interface GigabitEthernet5/1
 no ip address
 shutdown
!
interface GigabitEthernet5/2
 no ip address
 shutdown
!
interface Vlan1
 no ip address
 shutdown
!
interface Vlan13
 ip address 109.72.122.5 255.255.255.252
 no ip proxy-arp
!
interface Vlan100
 description CoreLan
 ip address 109.72.122.60 255.255.255.224 secondary
 ip address 109.72.122.61 255.255.255.224
 no ip redirects
 no ip proxy-arp
 no ip igmp snooping
 ip ospf authentication-key 7 asfasdfasdfasdf
!
interface Vlan201
 description OSCHABANK Internal network
 ip address 10.44.255.126 255.255.255.128
!
interface Vlan203
 description FTCOM-INET
 ip address 92.242.122.190 255.255.255.252
 no ip proxy-arp
!
interface Vlan214
 description SigmaTV
 ip address 109.72.122.185 255.255.255.248
 no ip proxy-arp
!
interface Vlan252
 description RealTransHolding
 ip address 109.72.122.29 255.255.255.252
 no ip proxy-arp
!
interface Vlan400
 description VEGA-TV
 ip address 192.168.55.9 255.255.255.252 secondary
 ip address 109.72.122.13 255.255.255.252
 no ip redirects
 no ip proxy-arp
 ip pim sparse-mode
!
interface Vlan445
 description DATAGROUP-INTERNE
 ip address 46.164.158.254 255.255.255.252
 no ip proxy-arp
 shutdown
!
interface Vlan507
 ip address 192.168.254.82 255.255.255.252
 no ip proxy-arp
 ip pim sparse-mode
!
interface Vlan1332
 ip address 213.133.161.182 255.255.255.252
 no ip proxy-arp
!
interface Vlan2100
 description Mariupol Internet Exchange
 ip address 193.46.210.186 255.255.255.248
 no ip proxy-arp
!
interface Vlan2959
 description KRASN_TV
 no ip address
 no ip proxy-arp
 no ip igmp snooping
!
interface Vlan2966
 description PIM-ROUTE-TO-KIEV
 ip address 192.168.55.1 255.255.255.252
 no ip proxy-arp
 ip pim sparse-mode
!
interface Vlan2967
 description PIM-ALTAIRMAR
 ip address 192.168.55.5 255.255.255.252
 no ip proxy-arp
 ip pim sparse-mode
!
interface Vlan2970
 ip address 192.168.72.100 255.255.255.0
 no ip proxy-arp
 ip pim sparse-mode
!
router ospf 1000
 router-id 109.72.122.61
 log-adjacency-changes
 area 0 authentication
 redistribute connected subnets
 redistribute static subnets
 network 109.72.122.32 0.0.0.31 area 0
!
router bgp 34092
 bgp log-neighbor-changes
 neighbor 46.164.158.253 remote-as 21219
 neighbor 46.164.158.253 description DATAGROUP-INTERNET
 neighbor 46.164.158.253 shutdown
 neighbor 92.242.122.189 remote-as 3261
 neighbor 92.242.122.189 description FTCOM-INET
 neighbor 109.72.122.6 remote-as 24881
 neighbor 109.72.122.6 description HITLINE-PEER
 neighbor 109.72.122.14 remote-as 50354
 neighbor 109.72.122.14 description VEGA-TV
 neighbor 193.46.210.185 remote-as 43554
 neighbor 193.46.210.185 description TRINITY-MARIX
 neighbor 193.46.210.187 remote-as 50204
 neighbor 193.46.210.187 description ARHAT-MARIX
 neighbor 193.46.210.188 remote-as 24881
 neighbor 193.46.210.188 description HITLINE-MARIX
 neighbor 213.133.161.181 remote-as 13249
 neighbor 213.133.161.181 description ITS Internet FV
 !
 address-family ipv4
  neighbor 46.164.158.253 activate
  neighbor 46.164.158.253 prefix-list provider_out out
  neighbor 92.242.122.189 activate
  neighbor 92.242.122.189 prefix-list provider_out out
  neighbor 92.242.122.189 route-map ftcom-in in
  neighbor 92.242.122.189 route-map prp2 out
  neighbor 109.72.122.6 activate
  neighbor 109.72.122.6 prefix-list provider_out out
  neighbor 109.72.122.6 route-map hit-peer-in in
  neighbor 109.72.122.14 activate
  neighbor 109.72.122.14 default-originate
  neighbor 109.72.122.14 prefix-list provider_out out
  neighbor 109.72.122.14 route-map vegatv-peer-in in
  neighbor 193.46.210.185 activate
  neighbor 193.46.210.185 prefix-list provider_out out
  neighbor 193.46.210.185 route-map trinity-marix-in in
  neighbor 193.46.210.187 activate
  neighbor 193.46.210.187 prefix-list provider_out out
  neighbor 193.46.210.187 route-map arhat-marix-in in
  neighbor 193.46.210.188 activate
  neighbor 193.46.210.188 prefix-list provider_out out
  neighbor 193.46.210.188 route-map hitline-marix-in in
  neighbor 213.133.161.181 activate
  neighbor 213.133.161.181 send-community
  neighbor 213.133.161.181 prefix-list provider_out out
  neighbor 213.133.161.181 route-map prp2 in
  neighbor 213.133.161.181 route-map its-community out
  no auto-summary
  no synchronization
  network 81.22.128.0 mask 255.255.240.0
  network 89.185.24.0 mask 255.255.248.0
  network 93.185.208.0 mask 255.255.240.0
  network 109.72.112.0 mask 255.255.240.0
 exit-address-family
!
ip classless
no ip forward-protocol nd
ip route 10.5.64.0 255.255.255.0 109.72.122.39
ip route 10.230.135.0 255.255.255.0 109.72.122.39
ip route 81.22.128.0 255.255.240.0 Null0
ip route 81.22.129.0 255.255.255.0 109.72.122.57
ip route 81.22.130.0 255.255.255.0 109.72.122.57
ip route 81.22.131.0 255.255.255.0 109.72.122.56
ip route 81.22.132.0 255.255.255.0 109.72.122.56
ip route 81.22.133.0 255.255.255.0 109.72.122.56
ip route 81.22.134.0 255.255.255.0 109.72.122.57
ip route 81.22.135.0 255.255.255.0 109.72.122.57
ip route 81.22.136.0 255.255.255.0 109.72.122.55
ip route 81.22.137.0 255.255.255.0 109.72.122.55
ip route 81.22.138.0 255.255.255.0 109.72.122.57
ip route 81.22.139.0 255.255.255.0 109.72.122.57
ip route 81.22.142.0 255.255.254.0 109.72.122.55
ip route 81.22.143.0 255.255.255.128 109.72.122.56
ip route 89.185.24.0 255.255.248.0 Null0
ip route 89.185.27.0 255.255.255.0 109.72.122.55
ip route 89.185.28.0 255.255.255.0 109.72.122.56
ip route 89.185.29.0 255.255.255.0 109.72.122.55
ip route 89.185.30.0 255.255.255.0 109.72.122.39
ip route 89.185.31.0 255.255.255.0 109.72.122.55
ip route 93.185.208.0 255.255.240.0 Null0
ip route 93.185.210.0 255.255.255.0 109.72.122.56
ip route 93.185.215.0 255.255.255.0 109.72.122.56
ip route 109.72.112.0 255.255.240.0 Null0
ip route 109.72.118.0 255.255.255.0 109.72.122.39
ip route 109.72.122.8 255.255.255.252 109.72.122.39
ip route 109.72.122.192 255.255.255.248 109.72.122.30
ip route 109.72.122.208 255.255.255.240 109.72.122.55
ip route 109.72.123.0 255.255.255.0 109.72.122.39
ip route 109.72.124.0 255.255.254.0 109.72.122.39
ip route 109.72.126.0 255.255.255.0 109.72.122.56
ip route 109.72.127.0 255.255.255.0 109.72.122.39
!
ip bgp-community new-format
ip as-path access-list 50 permit ^24881
ip as-path access-list 50 deny .*
ip as-path access-list 51 permit ^43554
ip as-path access-list 51 deny .*
ip as-path access-list 52 permit ^50204
ip as-path access-list 52 deny .*
ip as-path access-list 53 permit ^50354
ip as-path access-list 53 deny .*
ip as-path access-list 100 permit 24940$
ip as-path access-list 500 permit .*
!
no ip http server
no ip http secure-server
ip pim rp-address 192.168.55.100
ip mroute 91.238.195.1 255.255.255.255 192.168.254.81
!
!
ip prefix-list provider_out seq 5 permit 89.185.24.0/21
ip prefix-list provider_out seq 10 permit 109.72.112.0/20
ip prefix-list provider_out seq 15 permit 93.185.208.0/20
ip prefix-list provider_out seq 20 permit 81.22.128.0/20
ip prefix-list provider_out seq 100 permit 193.106.64.0/22
logging 109.72.122.46
no cdp run
!
route-map arhat-marix-in permit 10
 match as-path 52
!
route-map trinity-marix-in permit 10
 match as-path 51
!
route-map vegatv-peer-in permit 10
 match as-path 53
!
route-map hitline-marix-in permit 10
 match as-path 50
!
route-map its-community permit 10
 description prepend 6 to MSK-IX
 continue 20
 set community 13249:2254
!
route-map its-community permit 20
 description prepend 6 to Cogent
 continue 30
 set community 13249:2454 additive
!
route-map its-community permit 30
 description prepend 6 to International peering ITS
 set community 13249:2594 additive
!
route-map prp2 permit 10
 set as-path prepend 34092 34092
!
route-map prp3 permit 10
 set as-path prepend 34092 34092 34092
!
route-map prp1 permit 10
 set as-path prepend 34092
!
route-map prp4 permit 10
 set as-path prepend 34092 34092 34092 34092
!
route-map ftcom-in permit 10
 description HETZNER prepend
 match as-path 100
 continue 20
 set local-preference 50
!
route-map ftcom-in permit 20
 match as-path 500
!
route-map hit-peer-in permit 10
 match as-path 50
 set local-preference 50
!
snmp-server community AeroBus362 RO 16
snmp-server location Mariupol, M69A
snmp-server contact hostmaster@provider.net.ua
snmp-server enable traps tty
snmp-server manager
!
!
control-plane
!
!
dial-peer cor custom
!
!
!
!
line con 0
line vty 0 4
 access-class 10 in
 login local
!
ntp clock-period 17179987
ntp server 131.188.3.220
!
end
                          '