#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
{
    'ge-0/0/2' => {
        'mtu' => '1514',
        'state' => 'enabled',
        'condition' => 'up',
        'speed' => '1000mbps',
        'description' => ''
    },
    'ge-0/0/24' => {
        'mtu' => '1514',
        'speed' => 'Auto',
        'description' => 'Discovery_tuner_multicast',
        'state' => 'enabled',
        'condition' => 'up'
    },
    'ge-0/0/8' => {
        'state' => 'enabled',
        'condition' => 'down',
        'description' => '',
        'speed' => '1000mbps',
        'mtu' => '1514'
    },
    'ge-0/0/40' => {
        'mtu' => '1514',
        'state' => 'enabled',
        'condition' => 'up',
        'description' => 'MVR-SUBSCRIBE-Ex40',
        'speed' => 'Auto'
    },
    'ge-0/0/37' => {
        'mtu' => '1514',
        'state' => 'enabled',
        'condition' => 'down',
        'speed' => 'Auto',
        'description' => 'TUNER-DRIM-manage'
    },
    'ge-0/0/43' => {
        'description' => '',
        'speed' => 'Auto',
        'condition' => 'up',
        'state' => 'enabled',
        'mtu' => '1514'
    },
    'ge-0/0/44' => {
        'mtu' => '1514',
        'description' => 'IPCAM-1-manage',
        'speed' => 'Auto',
        'condition' => 'up',
        'state' => 'enabled'
    },
    'ge-0/0/5' => {
        'description' => '',
        'speed' => '1000mbps',
        'condition' => 'down',
        'state' => 'enabled',
        'mtu' => '1514'
    },
    'ge-0/0/26' => {
        'description' => 'Discovery3_tuner_multicast',
        'speed' => 'Auto',
        'condition' => 'up',
        'state' => 'enabled',
        'mtu' => '1514'
    },
    'ge-0/0/23' => {
        'condition' => 'up',
        'state' => 'enabled',
        'description' => 'Discovery4_tuner_multicast',
        'speed' => 'Auto',
        'mtu' => '1514'
    },
    'bme0' => {
        'description' => '',
        'speed' => 'Unspecified',
        'state' => 'enabled',
        'condition' => 'up',
        'mtu' => '1576'
    },
    'ge-0/0/25' => {
        'speed' => 'Auto',
        'description' => 'Discovery2_tuner_multicast',
        'state' => 'enabled',
        'condition' => 'up',
        'mtu' => '1514'
    },
    'ae1' => {
        'mtu' => '1514',
        'condition' => 'down',
        'state' => 'enabled',
        'description' => 'Ext-60-UP',
        'speed' => 'Unspecified'
    },
    'ge-0/0/7' => {
        'mtu' => '1514',
        'condition' => 'down',
        'state' => 'enabled',
        'speed' => '1000mbps',
        'description' => ''
    },
    'ge-0/0/15' => {
        'state' => 'enabled',
        'condition' => 'up',
        'description' => '',
        'speed' => 'Auto',
        'mtu' => '1514'
    },
    'vlan' => {
        'speed' => '1000mbps',
        'description' => '',
        'condition' => 'up',
        'state' => 'enabled',
        'mtu' => '1518'
    },
    'ge-0/0/27' => {
        'state' => 'enabled',
        'condition' => 'down',
        'description' => '',
        'speed' => 'Auto',
        'mtu' => '1514'
    },
    'ae2' => {
        'speed' => 'Unspecified',
        'description' => '',
        'condition' => 'down',
        'state' => 'enabled',
        'mtu' => '1514'
    },
    'ge-0/0/6' => {
        'mtu' => '1514',
        'description' => '',
        'speed' => '1000mbps',
        'state' => 'enabled',
        'condition' => 'down'
    },
    'ge-0/0/36' => {
        'condition' => 'down',
        'state' => 'enabled',
        'description' => '',
        'speed' => 'Auto',
        'mtu' => '1514'
    },
    'ge-0/0/21' => {
        'mtu' => '1514',
        'description' => '',
        'speed' => 'Auto',
        'state' => 'enabled',
        'condition' => 'down'
    },
    'gre' => {
        'condition' => 'up',
        'state' => 'enabled',
        'speed' => 'Unlimited',
        'description' => '',
        'mtu' => 'Unlimited'
    },
    'xe-0/1/2' => {
        'state' => 'enabled',
        'condition' => 'up',
        'speed' => '10Gbps',
        'description' => 'C6500-UPLINK',
        'mtu' => '1514'
    },
    'ge-0/0/45' => {
        'condition' => 'down',
        'state' => 'enabled',
        'speed' => 'Auto',
        'description' => 'ASTRA-140',
        'mtu' => '1514'
    },
    'ge-0/0/47' => {
        'mtu' => '1514',
        'condition' => 'up',
        'state' => 'enabled',
        'description' => 'DYBSYS-101 MGM',
        'speed' => 'Auto'
    },
    'ge-0/0/33' => {
        'state' => 'enabled',
        'condition' => 'down',
        'speed' => 'Auto',
        'description' => '',
        'mtu' => '1514'
    },
    'ge-0/0/42' => {
        'condition' => 'up',
        'state' => 'enabled',
        'speed' => 'Auto',
        'description' => 'ASTERISK_35',
        'mtu' => '1514'
    },
    'ge-0/0/39' => {
        'speed' => 'Auto',
        'description' => 'RIPE_ATLAS',
        'condition' => 'down',
        'state' => 'enabled',
        'mtu' => '1514'
    },
    'ge-0/0/9' => {
        'condition' => 'down',
        'state' => 'enabled',
        'description' => '',
        'speed' => '1000mbps',
        'mtu' => '1514'
    },
    'ge-0/0/18' => {
        'description' => '',
        'speed' => 'Auto',
        'state' => 'enabled',
        'condition' => 'down',
        'mtu' => '1514'
    },
    'ge-0/0/28' => {
        'mtu' => '1514',
        'description' => 'test_vlan_507_MGUKRINA',
        'speed' => 'Auto',
        'condition' => 'down',
        'state' => 'enabled'
    },
    'tap' => {
        'description' => '',
        'speed' => 'Unlimited',
        'state' => 'enabled',
        'condition' => 'up',
        'mtu' => 'Unlimited'
    },
    'ge-0/0/34' => {
        'mtu' => '1514',
        'speed' => 'Auto',
        'description' => '',
        'condition' => 'down',
        'state' => 'enabled'
    },
    'ge-0/0/38' => {
        'description' => 'IPCAM-2-manage',
        'speed' => 'Auto',
        'state' => 'enabled',
        'condition' => 'up',
        'mtu' => '1514'
    },
    'xe-0/1/1' => {
        'mtu' => '1514',
        'speed' => '10Gbps',
        'description' => 'ITV 10G',
        'condition' => 'up',
        'state' => 'enabled'
    },
    'ge-0/0/16' => {
        'mtu' => '1514',
        'description' => '',
        'speed' => 'Auto',
        'state' => 'enabled',
        'condition' => 'down'
    },
    'ge-0/0/4' => {
        'mtu' => '1514',
        'description' => '',
        'speed' => '1000mbps',
        'state' => 'enabled',
        'condition' => 'down'
    },
    'ge-0/0/1' => {
        'condition' => 'up',
        'state' => 'enabled',
        'speed' => '1000mbps',
        'description' => '',
        'mtu' => '1514'
    },
    'pimd' => {
        'mtu' => 'Unlimited',
        'state' => 'enabled',
        'condition' => 'up',
        'speed' => 'Unlimited',
        'description' => ''
    },
    'lo0' => {
        'state' => 'enabled',
        'condition' => 'up',
        'description' => '',
        'speed' => 'Unspecified',
        'mtu' => 'Unlimited'
    },
    'mtun' => {
        'condition' => 'up',
        'state' => 'enabled',
        'speed' => 'Unlimited',
        'description' => '',
        'mtu' => 'Unlimited'
    },
    'vme' => {
        'condition' => 'down',
        'state' => 'enabled',
        'speed' => '1000mbps',
        'description' => '',
        'mtu' => '1518'
    },
    'ge-0/0/29' => {
        'state' => 'enabled',
        'condition' => 'down',
        'speed' => 'Auto',
        'description' => '',
        'mtu' => '1514'
    },
    'ge-0/0/11' => {
        'speed' => '1000mbps',
        'description' => '',
        'condition' => 'down',
        'state' => 'enabled',
        'mtu' => '1514'
    },
    'ge-0/0/12' => {
        'condition' => 'down',
        'state' => 'enabled',
        'description' => '',
        'speed' => 'Auto',
        'mtu' => '1514'
    },
    'dsc' => {
        'condition' => 'up',
        'state' => 'enabled',
        'speed' => 'Unspecified',
        'description' => '',
        'mtu' => 'Unlimited'
    },
    'ge-0/0/17' => {
        'state' => 'enabled',
        'condition' => 'down',
        'description' => '',
        'speed' => 'Auto',
        'mtu' => '1514'
    },
    'ge-0/0/22' => {
        'description' => '',
        'speed' => 'Auto',
        'condition' => 'down',
        'state' => 'enabled',
        'mtu' => '1514'
    },
    'ge-0/0/14' => {
        'mtu' => '1514',
        'speed' => 'Auto',
        'description' => '',
        'condition' => 'down',
        'state' => 'enabled'
    },
    'ge-0/0/19' => {
        'condition' => 'down',
        'state' => 'enabled',
        'speed' => 'Auto',
        'description' => '',
        'mtu' => '1514'
    },
    'pime' => {
        'mtu' => 'Unlimited',
        'state' => 'enabled',
        'condition' => 'up',
        'description' => '',
        'speed' => 'Unlimited'
    },
    'ge-0/0/10' => {
        'mtu' => '1514',
        'description' => '',
        'speed' => '1000mbps',
        'state' => 'enabled',
        'condition' => 'down'
    },
    'ge-0/0/41' => {
        'description' => 'IPCAM-3-manage',
        'speed' => 'Auto',
        'state' => 'enabled',
        'condition' => 'up',
        'mtu' => '1514'
    },
    'ge-0/0/31' => {
        'mtu' => '1514',
        'state' => 'enabled',
        'condition' => 'down',
        'speed' => 'Auto',
        'description' => ''
    },
    'ge-0/0/46' => {
        'mtu' => '1514',
        'speed' => 'Auto',
        'description' => 'DYBSYS-102 MGM',
        'state' => 'enabled',
        'condition' => 'up'
    },
    'ge-0/0/3' => {
        'mtu' => '1514',
        'speed' => '1000mbps',
        'description' => '',
        'state' => 'enabled',
        'condition' => 'up'
    },
    'ae0' => {
        'state' => 'enabled',
        'condition' => 'up',
        'description' => 'Ext-40-UP',
        'speed' => '4Gbps',
        'mtu' => '1514'
    },
    'ge-0/0/30' => {
        'mtu' => '1514',
        'state' => 'enabled',
        'condition' => 'up',
        'description' => 'ASTRA-SPTS_155',
        'speed' => 'Auto'
    },
    'ge-0/0/32' => {
        'description' => 'empty_vlan_office',
        'speed' => 'Auto',
        'state' => 'enabled',
        'condition' => 'up',
        'mtu' => '1514'
    },
    'ge-0/0/35' => {
        'state' => 'enabled',
        'condition' => 'up',
        'speed' => 'Auto',
        'description' => '',
        'mtu' => '1514'
    },
    'ipip' => {
        'speed' => 'Unlimited',
        'description' => '',
        'condition' => 'up',
        'state' => 'enabled',
        'mtu' => 'Unlimited'
    },
    'lsi' => {
        'mtu' => '1496',
        'speed' => 'Unlimited',
        'description' => '',
        'condition' => 'up',
        'state' => 'enabled'
    },
    'me0' => {
        'speed' => 'Unspecified',
        'description' => '',
        'condition' => 'down',
        'state' => 'enabled',
        'mtu' => '1514'
    },
    'ge-0/0/0' => {
        'mtu' => '1514',
        'speed' => '1000mbps',
        'description' => '',
        'state' => 'enabled',
        'condition' => 'up'
    },
    'ge-0/0/13' => {
        'mtu' => '1514',
        'description' => 'IP-KVM',
        'speed' => 'Auto',
        'state' => 'enabled',
        'condition' => 'up'
    },
    'ge-0/0/20' => {
        'mtu' => '1514',
        'speed' => 'Auto',
        'description' => 'ITV-C4C',
        'state' => 'enabled',
        'condition' => 'up'
    }
};