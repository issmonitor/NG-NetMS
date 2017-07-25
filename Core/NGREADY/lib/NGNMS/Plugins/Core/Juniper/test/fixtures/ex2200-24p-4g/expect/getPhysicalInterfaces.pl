#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
{
    'ae5' => {
        'description' => '',
        'mtu' => '1514',
        'condition' => 'down',
        'speed' => 'Unspecified',
        'state' => 'enabled'
    },
    'ae4' => {
        'description' => '',
        'state' => 'enabled',
        'speed' => 'Unspecified',
        'mtu' => '1514',
        'condition' => 'down'
    },
    'ge-0/0/23' => {
        'speed' => 'Auto',
        'state' => 'enabled',
        'condition' => 'up',
        'mtu' => '1514',
        'description' => ''
    },
    'ge-0/0/11' => {
        'description' => 'Redundant-link-to-J',
        'condition' => 'down',
        'mtu' => '1514',
        'state' => 'enabled',
        'speed' => 'Auto'
    },
    'ge-0/0/16' => {
        'description' => '',
        'mtu' => '1514',
        'condition' => 'down',
        'speed' => 'Auto',
        'state' => 'enabled'
    },
    'gre' => {
        'description' => '',
        'speed' => 'Unlimited',
        'state' => 'enabled',
        'mtu' => 'Unlimited',
        'condition' => 'up'
    },
    'lsi' => {
        'description' => '',
        'speed' => 'Unlimited',
        'state' => 'enabled',
        'condition' => 'up',
        'mtu' => '1496'
    },
    'ge-0/0/1' => {
        'condition' => 'down',
        'mtu' => '1514',
        'speed' => 'Auto',
        'state' => 'enabled',
        'description' => ''
    },
    'ge-0/0/22' => {
        'speed' => 'Auto',
        'state' => 'enabled',
        'mtu' => '1514',
        'condition' => 'down',
        'description' => 'Direct to the SSG5-0/1-DMZ'
    },
    'ge-0/0/0' => {
        'description' => '',
        'state' => 'enabled',
        'speed' => 'Auto',
        'mtu' => '1514',
        'condition' => 'up'
    },
    'ge-0/0/21' => {
        'state' => 'enabled',
        'speed' => 'Auto',
        'mtu' => '1514',
        'condition' => 'down',
        'description' => ''
    },
    'ge-0/0/20' => {
        'description' => '',
        'speed' => 'Auto',
        'state' => 'enabled',
        'condition' => 'down',
        'mtu' => '1514'
    },
    'ge-0/0/5' => {
        'speed' => 'Auto',
        'state' => 'enabled',
        'condition' => 'down',
        'mtu' => '1514',
        'description' => ''
    },
    'dsc' => {
        'state' => 'enabled',
        'speed' => 'Unspecified',
        'mtu' => 'Unlimited',
        'condition' => 'up',
        'description' => ''
    },
    'ge-0/0/3' => {
        'description' => '',
        'speed' => 'Auto',
        'state' => 'enabled',
        'mtu' => '1514',
        'condition' => 'down'
    },
    'ae3' => {
        'description' => '',
        'state' => 'enabled',
        'speed' => 'Unspecified',
        'mtu' => '1514',
        'condition' => 'down'
    },
    'ge-0/0/4' => {
        'description' => '',
        'mtu' => '1514',
        'condition' => 'up',
        'speed' => 'Auto',
        'state' => 'enabled'
    },
    'pimd' => {
        'condition' => 'up',
        'mtu' => 'Unlimited',
        'speed' => 'Unlimited',
        'state' => 'enabled',
        'description' => ''
    },
    'ae2' => {
        'condition' => 'down',
        'mtu' => '1514',
        'state' => 'enabled',
        'speed' => 'Unspecified',
        'description' => ''
    },
    'pime' => {
        'state' => 'enabled',
        'speed' => 'Unlimited',
        'mtu' => 'Unlimited',
        'condition' => 'up',
        'description' => ''
    },
    'mtun' => {
        'description' => '',
        'mtu' => 'Unlimited',
        'condition' => 'up',
        'state' => 'enabled',
        'speed' => 'Unlimited'
    },
    'ge-0/0/14' => {
        'description' => '',
        'mtu' => '1514',
        'condition' => 'down',
        'state' => 'enabled',
        'speed' => 'Auto'
    },
    'ge-0/0/13' => {
        'description' => '',
        'mtu' => '1514',
        'condition' => 'down',
        'speed' => 'Auto',
        'state' => 'enabled'
    },
    'ae0' => {
        'mtu' => '1514',
        'condition' => 'down',
        'state' => 'enabled',
        'speed' => 'Unspecified',
        'description' => ''
    },
    'ipip' => {
        'description' => '',
        'mtu' => 'Unlimited',
        'condition' => 'up',
        'state' => 'enabled',
        'speed' => 'Unlimited'
    },
    'lo0' => {
        'condition' => 'up',
        'mtu' => 'Unlimited',
        'speed' => 'Unspecified',
        'state' => 'enabled',
        'description' => ''
    },
    'ge-0/0/2' => {
        'state' => 'enabled',
        'speed' => 'Auto',
        'condition' => 'down',
        'mtu' => '1514',
        'description' => ''
    },
    'ge-0/0/7' => {
        'description' => '',
        'state' => 'enabled',
        'speed' => 'Auto',
        'condition' => 'down',
        'mtu' => '1514'
    },
    'me0' => {
        'description' => '',
        'speed' => 'Unspecified',
        'state' => 'enabled',
        'condition' => 'down',
        'mtu' => '1514'
    },
    'tap' => {
        'mtu' => 'Unlimited',
        'condition' => 'up',
        'state' => 'enabled',
        'speed' => 'Unlimited',
        'description' => ''
    },
    'ge-0/0/15' => {
        'description' => '',
        'state' => 'enabled',
        'speed' => 'Auto',
        'mtu' => '1514',
        'condition' => 'down'
    },
    'ge-0/0/19' => {
        'description' => '',
        'mtu' => '1514',
        'condition' => 'down',
        'speed' => 'Auto',
        'state' => 'enabled'
    },
    'bme0' => {
        'description' => '',
        'speed' => 'Unspecified',
        'state' => 'enabled',
        'mtu' => '1576',
        'condition' => 'up'
    },
    'ge-0/0/9' => {
        'condition' => 'down',
        'mtu' => '1514',
        'state' => 'enabled',
        'speed' => 'Auto',
        'description' => ''
    },
    'ge-0/0/6' => {
        'description' => '',
        'speed' => 'Auto',
        'state' => 'enabled',
        'mtu' => '1514',
        'condition' => 'down'
    },
    'vme' => {
        'description' => '',
        'mtu' => '1518',
        'condition' => 'down',
        'speed' => '1000mbps',
        'state' => 'enabled'
    },
    'ae7' => {
        'description' => '',
        'condition' => 'down',
        'mtu' => '1514',
        'speed' => 'Unspecified',
        'state' => 'enabled'
    },
    'ge-0/0/8' => {
        'description' => '',
        'condition' => 'up',
        'mtu' => '1514',
        'speed' => 'Auto',
        'state' => 'enabled'
    },
    'ae6' => {
        'description' => '',
        'state' => 'enabled',
        'speed' => 'Unspecified',
        'mtu' => '1514',
        'condition' => 'down'
    },
    'ge-0/0/17' => {
        'mtu' => '1514',
        'condition' => 'down',
        'state' => 'enabled',
        'speed' => 'Auto',
        'description' => ''
    },
    'vlan' => {
        'description' => '',
        'mtu' => '1518',
        'condition' => 'up',
        'speed' => '1000mbps',
        'state' => 'enabled'
    },
    'ge-0/0/18' => {
        'condition' => 'down',
        'mtu' => '1514',
        'state' => 'enabled',
        'speed' => 'Auto',
        'description' => ''
    },
    'ge-0/0/10' => {
        'condition' => 'down',
        'mtu' => '1514',
        'state' => 'enabled',
        'speed' => 'Auto',
        'description' => 'Uplink-server-1'
    },
    'ge-0/0/12' => {
        'condition' => 'down',
        'mtu' => '1514',
        'state' => 'enabled',
        'speed' => 'Auto',
        'description' => ''
    },
    'ae1' => {
        'mtu' => '1514',
        'condition' => 'down',
        'state' => 'enabled',
        'speed' => 'Unspecified',
        'description' => ''
    }
};