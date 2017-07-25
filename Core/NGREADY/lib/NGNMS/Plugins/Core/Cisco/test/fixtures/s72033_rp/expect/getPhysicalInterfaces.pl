#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
{
    'GigabitEthernet4/19' => {
        'description' => '',
        'mtu' => '1500',
        'state' => 'disabled',
        'speed' => '1000000 Kbit',
        'condition' => 'down'
    },
    'GigabitEthernet4/5' => {
        'condition' => 'up',
        'state' => 'enabled',
        'speed' => '100000 Kbit',
        'mtu' => '1500',
        'description' => 'SIGMA'
    },
    'GigabitEthernet4/33' => {
        'mtu' => '1500',
        'description' => '',
        'condition' => 'down',
        'state' => 'disabled',
        'speed' => '1000000 Kbit'
    },
    'GigabitEthernet4/42' => {
        'condition' => 'down',
        'state' => 'disabled',
        'speed' => '1000000 Kbit',
        'mtu' => '1500',
        'description' => ''
    },
    'GigabitEthernet4/8' => {
        'speed' => '1000000 Kbit',
        'state' => 'enabled',
        'condition' => 'up',
        'description' => 'ZYX-SWITCH-IPTV 10.230.132.77',
        'mtu' => '1500'
    },
    'GigabitEthernet4/30' => {
        'condition' => 'down',
        'state' => 'disabled',
        'speed' => '1000000 Kbit',
        'mtu' => '1500',
        'description' => ''
    },
    'GigabitEthernet2/13' => {
        'condition' => 'down',
        'speed' => '1000000 Kbit',
        'state' => 'disabled',
        'mtu' => '1500',
        'description' => ''
    },
    'GigabitEthernet2/18' => {
        'mtu' => '1500',
        'description' => '',
        'condition' => 'down',
        'state' => 'disabled',
        'speed' => '1000000 Kbit'
    },
    'GigabitEthernet4/6' => {
        'state' => 'enabled',
        'speed' => '100000 Kbit',
        'condition' => 'up',
        'description' => 'HITLINE',
        'mtu' => '1500'
    },
    'GigabitEthernet2/23' => {
        'state' => 'disabled',
        'speed' => '1000000 Kbit',
        'condition' => 'down',
        'description' => '',
        'mtu' => '1500'
    },
    'GigabitEthernet4/20' => {
        'mtu' => '1500',
        'description' => '',
        'condition' => 'down',
        'state' => 'disabled',
        'speed' => '1000000 Kbit'
    },
    'GigabitEthernet4/3' => {
        'state' => 'disabled',
        'speed' => '1000000 Kbit',
        'condition' => 'down',
        'description' => '',
        'mtu' => '1500'
    },
    'GigabitEthernet4/10' => {
        'state' => 'enabled',
        'speed' => '1000000 Kbit',
        'condition' => 'up',
        'description' => 'ITS-KIEV-TRANSPORT-qIq-encapsulation-port',
        'mtu' => '1500'
    },
    'GigabitEthernet5/1' => {
        'state' => 'disabled',
        'speed' => '1000000 Kbit',
        'condition' => 'down',
        'description' => '',
        'mtu' => '1500'
    },
    'GigabitEthernet2/24' => {
        'mtu' => '1500',
        'description' => '',
        'condition' => 'down',
        'state' => 'disabled',
        'speed' => '1000000 Kbit'
    },
    'Vlan2967' => {
        'condition' => 'up',
        'state' => 'enabled',
        'speed' => '1000000 Kbit',
        'mtu' => '1500',
        'description' => 'PIM-ALTAIRMAR'
    },
    'GigabitEthernet4/17' => {
        'state' => 'disabled',
        'speed' => '1000000 Kbit',
        'condition' => 'down',
        'description' => '',
        'mtu' => '1500'
    },
    'Vlan214' => {
        'description' => 'SigmaTV',
        'mtu' => '1500',
        'state' => 'enabled',
        'speed' => '1000000 Kbit',
        'condition' => 'up'
    },
    'GigabitEthernet4/25' => {
        'condition' => 'down',
        'state' => 'disabled',
        'speed' => '1000000 Kbit',
        'mtu' => '1500',
        'description' => ''
    },
    'GigabitEthernet4/16' => {
        'mtu' => '1500',
        'description' => '',
        'condition' => 'down',
        'state' => 'disabled',
        'speed' => '1000000 Kbit'
    },
    'GigabitEthernet4/24' => {
        'speed' => '1000000 Kbit',
        'state' => 'disabled',
        'condition' => 'down',
        'description' => '',
        'mtu' => '1500'
    },
    'GigabitEthernet4/31' => {
        'description' => '',
        'mtu' => '1500',
        'state' => 'disabled',
        'speed' => '1000000 Kbit',
        'condition' => 'down'
    },
    'GigabitEthernet4/32' => {
        'condition' => 'down',
        'state' => 'disabled',
        'speed' => '1000000 Kbit',
        'mtu' => '1500',
        'description' => ''
    },
    'TenGigabitEthernet3/4' => {
        'condition' => 'up',
        'state' => 'enabled',
        'speed' => '10000000 Kbit',
        'mtu' => '1500',
        'description' => 'Uplink to JUN41'
    },
    'GigabitEthernet4/43' => {
        'mtu' => '1500',
        'description' => '',
        'condition' => 'down',
        'speed' => '1000000 Kbit',
        'state' => 'disabled'
    },
    'GigabitEthernet4/7' => {
        'description' => 'TRANSCODING-COMP 109.72.122.156',
        'mtu' => '1500',
        'speed' => '1000000 Kbit',
        'state' => 'disabled',
        'condition' => 'down'
    },
    'GigabitEthernet4/27' => {
        'description' => '',
        'mtu' => '1500',
        'speed' => '1000000 Kbit',
        'state' => 'disabled',
        'condition' => 'down'
    },
    'GigabitEthernet2/2' => {
        'mtu' => '1500',
        'description' => 'ALTAIR-AGG-2',
        'condition' => 'up',
        'speed' => '1000000 Kbit',
        'state' => 'enabled'
    },
    'Vlan1332' => {
        'mtu' => '1500',
        'description' => '',
        'condition' => 'up',
        'speed' => '1000000 Kbit',
        'state' => 'enabled'
    },
    'GigabitEthernet4/15' => {
        'condition' => 'down',
        'speed' => '1000000 Kbit',
        'state' => 'disabled',
        'mtu' => '1500',
        'description' => ''
    },
    'Vlan203' => {
        'description' => 'FTCOM-INET',
        'mtu' => '1500',
        'state' => 'enabled',
        'speed' => '1000000 Kbit',
        'condition' => 'up'
    },
    'GigabitEthernet2/19' => {
        'condition' => 'down',
        'speed' => '1000000 Kbit',
        'state' => 'disabled',
        'mtu' => '1500',
        'description' => ''
    },
    'GigabitEthernet2/8' => {
        'state' => 'disabled',
        'speed' => '1000000 Kbit',
        'condition' => 'down',
        'description' => 'MTKVEGA',
        'mtu' => '1500'
    },
    'Vlan2970' => {
        'condition' => 'up',
        'speed' => '1000000 Kbit',
        'state' => 'enabled',
        'mtu' => '1500',
        'description' => ''
    },
    'GigabitEthernet2/6' => {
        'description' => 'ALTAIR_ADARYUKOV_CH',
        'mtu' => '1500',
        'state' => 'enabled',
        'speed' => '1000000 Kbit',
        'condition' => 'up'
    },
    'Loopback0' => {
        'description' => '',
        'mtu' => '1514',
        'speed' => '8000000 Kbit',
        'state' => 'enabled',
        'condition' => 'up'
    },
    'Vlan13' => {
        'description' => '',
        'mtu' => '1500',
        'state' => 'enabled',
        'speed' => '1000000 Kbit',
        'condition' => 'up'
    },
    'Vlan2966' => {
        'speed' => '1000000 Kbit',
        'state' => 'enabled',
        'condition' => 'up',
        'description' => 'PIM-ROUTE-TO-KIEV',
        'mtu' => '1500'
    },
    'GigabitEthernet4/22' => {
        'speed' => '1000000 Kbit',
        'state' => 'disabled',
        'condition' => 'down',
        'description' => '',
        'mtu' => '1500'
    },
    'GigabitEthernet5/2' => {
        'speed' => '1000000 Kbit',
        'state' => 'disabled',
        'condition' => 'down',
        'description' => '',
        'mtu' => '1500'
    },
    'GigabitEthernet4/13' => {
        'state' => 'disabled',
        'speed' => '1000000 Kbit',
        'condition' => 'down',
        'description' => '',
        'mtu' => '1500'
    },
    'GigabitEthernet4/29' => {
        'description' => '',
        'mtu' => '1500',
        'state' => 'disabled',
        'speed' => '1000000 Kbit',
        'condition' => 'down'
    },
    'GigabitEthernet4/34' => {
        'condition' => 'down',
        'speed' => '1000000 Kbit',
        'state' => 'disabled',
        'mtu' => '1500',
        'description' => ''
    },
    'GigabitEthernet2/10' => {
        'description' => '',
        'mtu' => '1500',
        'state' => 'disabled',
        'speed' => '1000000 Kbit',
        'condition' => 'down'
    },
    'GigabitEthernet2/20' => {
        'condition' => 'down',
        'state' => 'disabled',
        'speed' => '1000000 Kbit',
        'mtu' => '1500',
        'description' => ''
    },
    'GigabitEthernet4/38' => {
        'mtu' => '1500',
        'description' => '',
        'condition' => 'down',
        'state' => 'disabled',
        'speed' => '1000000 Kbit'
    },
    'GigabitEthernet4/1' => {
        'description' => '',
        'mtu' => '1500',
        'state' => 'disabled',
        'speed' => '1000000 Kbit',
        'condition' => 'down'
    },
    'GigabitEthernet4/2' => {
        'description' => '',
        'mtu' => '1500',
        'speed' => '1000000 Kbit',
        'state' => 'disabled',
        'condition' => 'down'
    },
    'GigabitEthernet2/14' => {
        'description' => '',
        'mtu' => '1500',
        'speed' => '1000000 Kbit',
        'state' => 'disabled',
        'condition' => 'down'
    },
    'GigabitEthernet4/39' => {
        'condition' => 'down',
        'speed' => '1000000 Kbit',
        'state' => 'disabled',
        'mtu' => '1500',
        'description' => ''
    },
    'GigabitEthernet4/9' => {
        'condition' => 'up',
        'state' => 'enabled',
        'speed' => '1000000 Kbit',
        'mtu' => '1500',
        'description' => 'ITS-KIEV-TRANSIT encapsulation port'
    },
    'GigabitEthernet2/17' => {
        'condition' => 'down',
        'speed' => '1000000 Kbit',
        'state' => 'disabled',
        'mtu' => '1500',
        'description' => ''
    },
    'Vlan252' => {
        'condition' => 'up',
        'speed' => '1000000 Kbit',
        'state' => 'enabled',
        'mtu' => '1500',
        'description' => 'RealTransHolding'
    },
    'GigabitEthernet2/22' => {
        'condition' => 'down',
        'speed' => '1000000 Kbit',
        'state' => 'disabled',
        'mtu' => '1500',
        'description' => ''
    },
    'GigabitEthernet4/36' => {
        'speed' => '1000000 Kbit',
        'state' => 'disabled',
        'condition' => 'down',
        'description' => '',
        'mtu' => '1500'
    },
    'GigabitEthernet2/3' => {
        'speed' => '1000000 Kbit',
        'state' => 'enabled',
        'condition' => 'up',
        'description' => 'ALTAIR-AGG-3',
        'mtu' => '1500'
    },
    'GigabitEthernet4/12' => {
        'state' => 'disabled',
        'speed' => '1000000 Kbit',
        'condition' => 'down',
        'description' => '',
        'mtu' => '1500'
    },
    'GigabitEthernet4/26' => {
        'condition' => 'down',
        'speed' => '1000000 Kbit',
        'state' => 'disabled',
        'mtu' => '1500',
        'description' => ''
    },
    'GigabitEthernet4/41' => {
        'mtu' => '1500',
        'description' => '',
        'condition' => 'down',
        'state' => 'disabled',
        'speed' => '1000000 Kbit'
    },
    'GigabitEthernet2/16' => {
        'mtu' => '1500',
        'description' => '',
        'condition' => 'down',
        'state' => 'disabled',
        'speed' => '1000000 Kbit'
    },
    'GigabitEthernet4/18' => {
        'description' => '',
        'mtu' => '1500',
        'speed' => '1000000 Kbit',
        'state' => 'disabled',
        'condition' => 'down'
    },
    'TenGigabitEthernet3/1' => {
        'description' => 'ITS-RTPC-PEER',
        'mtu' => '9216',
        'speed' => '10000000 Kbit',
        'state' => 'enabled',
        'condition' => 'up'
    },
    'GigabitEthernet2/11' => {
        'mtu' => '1500',
        'description' => '',
        'condition' => 'down',
        'state' => 'disabled',
        'speed' => '1000000 Kbit'
    },
    'Vlan2959' => {
        'condition' => 'up',
        'speed' => '1000000 Kbit',
        'state' => 'enabled',
        'mtu' => '1500',
        'description' => 'KRASN_TV'
    },
    'Vlan445' => {
        'state' => 'disabled',
        'speed' => '1000000 Kbit',
        'condition' => 'down',
        'description' => 'DATAGROUP-INTERNE',
        'mtu' => '1500'
    },
    'GigabitEthernet2/12' => {
        'mtu' => '1500',
        'description' => '',
        'condition' => 'down',
        'speed' => '1000000 Kbit',
        'state' => 'disabled'
    },
    'GigabitEthernet2/4' => {
        'mtu' => '1500',
        'description' => 'ALTAIR-AGG-4',
        'condition' => 'up',
        'state' => 'enabled',
        'speed' => '1000000 Kbit'
    },
    'Vlan100' => {
        'speed' => '1000000 Kbit',
        'state' => 'enabled',
        'condition' => 'up',
        'description' => 'CoreLan',
        'mtu' => '1500'
    },
    'Vlan2100' => {
        'speed' => '1000000 Kbit',
        'state' => 'enabled',
        'condition' => 'up',
        'description' => 'Mariupol Internet Exchange',
        'mtu' => '1500'
    },
    'Port-channel2' => {
        'mtu' => '1500',
        'description' => 'LACP to ALTAIR',
        'condition' => 'up',
        'speed' => '4000000 Kbit',
        'state' => 'enabled'
    },
    'GigabitEthernet2/5' => {
        'state' => 'enabled',
        'speed' => '1000000 Kbit',
        'condition' => 'up',
        'description' => 'ALTAIR_GUGELYA_22',
        'mtu' => '1500'
    },
    'GigabitEthernet4/44' => {
        'mtu' => '1500',
        'description' => '',
        'condition' => 'down',
        'state' => 'disabled',
        'speed' => '1000000 Kbit'
    },
    'GigabitEthernet4/14' => {
        'description' => '',
        'mtu' => '1500',
        'state' => 'disabled',
        'speed' => '1000000 Kbit',
        'condition' => 'down'
    },
    'GigabitEthernet2/9' => {
        'condition' => 'down',
        'state' => 'disabled',
        'speed' => '1000000 Kbit',
        'mtu' => '1500',
        'description' => ''
    },
    'Vlan201' => {
        'state' => 'enabled',
        'speed' => '1000000 Kbit',
        'condition' => 'up',
        'description' => 'OSCHABANK Internal network',
        'mtu' => '1500'
    },
    'GigabitEthernet2/15' => {
        'description' => '',
        'mtu' => '1500',
        'state' => 'disabled',
        'speed' => '1000000 Kbit',
        'condition' => 'down'
    },
    'TenGigabitEthernet3/2' => {
        'description' => 'FTICOM',
        'mtu' => '1500',
        'state' => 'enabled',
        'speed' => '10000000 Kbit',
        'condition' => 'up'
    },
    'GigabitEthernet4/48' => {
        'condition' => 'up',
        'state' => 'enabled',
        'speed' => '1000000 Kbit',
        'mtu' => '1500',
        'description' => 'TEST 507 vlan'
    },
    'GigabitEthernet2/1' => {
        'description' => 'ALTAIR-AGG-1',
        'mtu' => '1500',
        'state' => 'enabled',
        'speed' => '1000000 Kbit',
        'condition' => 'up'
    },
    'GigabitEthernet4/46' => {
        'description' => '',
        'mtu' => '1500',
        'state' => 'disabled',
        'speed' => '1000000 Kbit',
        'condition' => 'down'
    },
    'GigabitEthernet4/37' => {
        'description' => '',
        'mtu' => '1500',
        'state' => 'disabled',
        'speed' => '1000000 Kbit',
        'condition' => 'down'
    },
    'GigabitEthernet4/4' => {
        'condition' => 'down',
        'speed' => '1000000 Kbit',
        'state' => 'disabled',
        'mtu' => '1500',
        'description' => ''
    },
    'Vlan507' => {
        'condition' => 'up',
        'state' => 'enabled',
        'speed' => '1000000 Kbit',
        'mtu' => '1500',
        'description' => ''
    },
    'GigabitEthernet4/35' => {
        'description' => '',
        'mtu' => '1500',
        'speed' => '1000000 Kbit',
        'state' => 'disabled',
        'condition' => 'down'
    },
    'GigabitEthernet2/21' => {
        'condition' => 'down',
        'state' => 'disabled',
        'speed' => '1000000 Kbit',
        'mtu' => '1500',
        'description' => ''
    },
    'GigabitEthernet4/11' => {
        'speed' => '100000 Kbit',
        'state' => 'enabled',
        'condition' => 'up',
        'description' => 'Ripe Atlas probe',
        'mtu' => '1500'
    },
    'GigabitEthernet4/23' => {
        'state' => 'disabled',
        'speed' => '1000000 Kbit',
        'condition' => 'down',
        'description' => '',
        'mtu' => '1500'
    },
    'TenGigabitEthernet3/3' => {
        'mtu' => '1500',
        'description' => 'DATAGROUP',
        'condition' => 'up',
        'speed' => '10000000 Kbit',
        'state' => 'enabled'
    },
    'GigabitEthernet4/47' => {
        'speed' => '1000000 Kbit',
        'state' => 'disabled',
        'condition' => 'down',
        'description' => '',
        'mtu' => '1500'
    },
    'GigabitEthernet4/45' => {
        'mtu' => '1500',
        'description' => '',
        'condition' => 'down',
        'state' => 'disabled',
        'speed' => '1000000 Kbit'
    },
    'GigabitEthernet2/7' => {
        'condition' => 'up',
        'state' => 'enabled',
        'speed' => '1000000 Kbit',
        'mtu' => '1500',
        'description' => 'FTCOM 1G IPTV'
    },
    'GigabitEthernet4/28' => {
        'condition' => 'down',
        'state' => 'disabled',
        'speed' => '1000000 Kbit',
        'mtu' => '1500',
        'description' => ''
    },
    'Vlan400' => {
        'description' => 'VEGA-TV',
        'mtu' => '1500',
        'state' => 'enabled',
        'speed' => '1000000 Kbit',
        'condition' => 'up'
    },
    'Vlan1' => {
        'condition' => 'down',
        'speed' => '1000000 Kbit',
        'state' => 'disabled',
        'mtu' => '1500',
        'description' => ''
    },
    'GigabitEthernet4/40' => {
        'speed' => '1000000 Kbit',
        'state' => 'disabled',
        'condition' => 'down',
        'description' => '',
        'mtu' => '1500'
    },
    'GigabitEthernet4/21' => {
        'condition' => 'down',
        'speed' => '1000000 Kbit',
        'state' => 'disabled',
        'mtu' => '1500',
        'description' => ''
    }
};