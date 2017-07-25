#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
{
    'se-4/0/0' => {
        'state' => 'enabled',
        'description' => '',
        'condition' => 'down',
        'speed' => '',
        'mtu' => '1504'
    },
    'fe-1/0/1' => {
        'condition' => 'down',
        'description' => '',
        'mtu' => '1514',
        'speed' => '100mbps',
        'state' => 'enabled'
    },
    'fe-2/0/0' => {
        'condition' => 'up',
        'description' => 'REDUNDANT LINK TO EX',
        'speed' => '100mbps',
        'mtu' => '1514',
        'state' => 'enabled'
    },
    'gre' => {
        'state' => 'enabled',
        'mtu' => 'Unlimited',
        'speed' => 'Unlimited',
        'condition' => 'up',
        'description' => ''
    },
    'pd-0/0/0' => {
        'state' => 'enabled',
        'mtu' => 'Unlimited',
        'speed' => '800mbps',
        'condition' => 'up',
        'description' => ''
    },
    'lsi' => {
        'speed' => 'Unlimited',
        'mtu' => '1496',
        'condition' => 'up',
        'description' => '',
        'state' => 'enabled'
    },
    'ipip' => {
        'speed' => 'Unlimited',
        'mtu' => 'Unlimited',
        'condition' => 'up',
        'description' => '',
        'state' => 'enabled'
    },
    'lt-0/0/0' => {
        'state' => 'enabled',
        'speed' => '800mbps',
        'mtu' => 'Unlimited',
        'condition' => 'up',
        'description' => ''
    },
    'pp0' => {
        'state' => 'enabled',
        'mtu' => '1532',
        'speed' => 'Unspecified',
        'condition' => 'up',
        'description' => ''
    },
    'lo0' => {
        'mtu' => 'Unlimited',
        'speed' => 'Unspecified',
        'description' => 'J_RouterID',
        'condition' => 'up',
        'state' => 'enabled'
    },
    'ip-0/0/0' => {
        'speed' => '800mbps',
        'mtu' => 'Unlimited',
        'description' => '',
        'condition' => 'up',
        'state' => 'enabled'
    },
    'pe-0/0/0' => {
        'description' => '',
        'condition' => 'up',
        'speed' => '800mbps',
        'mtu' => 'Unlimited',
        'state' => 'enabled'
    },
    'pime' => {
        'description' => '',
        'condition' => 'up',
        'speed' => 'Unlimited',
        'mtu' => 'Unlimited',
        'state' => 'enabled'
    },
    'fe-0/0/1' => {
        'mtu' => '1518',
        'speed' => '100mbps',
        'description' => 'description for physical',
        'condition' => 'down',
        'state' => 'enabled'
    },
    'mt-0/0/0' => {
        'mtu' => 'Unlimited',
        'speed' => '800mbps',
        'description' => '',
        'condition' => 'up',
        'state' => 'enabled'
    },
    'ls-0/0/0' => {
        'condition' => 'up',
        'description' => '',
        'mtu' => '1504',
        'speed' => '',
        'state' => 'enabled'
    },
    'fe-2/0/1' => {
        'state' => 'enabled',
        'condition' => 'down',
        'description' => '',
        'mtu' => '1514',
        'speed' => '100mbps'
    },
    'tap' => {
        'condition' => 'up',
        'description' => '',
        'mtu' => 'Unlimited',
        'speed' => 'Unlimited',
        'state' => 'enabled'
    },
    'fe-0/0/0' => {
        'speed' => '100mbps',
        'mtu' => '1514',
        'condition' => 'up',
        'description' => 'J <-> E2200',
        'state' => 'enabled'
    },
    'se-4/0/1' => {
        'state' => 'enabled',
        'description' => '',
        'condition' => 'down',
        'mtu' => '1504',
        'speed' => ''
    },
    'sp-0/0/0' => {
        'state' => 'enabled',
        'description' => '',
        'condition' => 'up',
        'speed' => '800mbps',
        'mtu' => '9192'
    },
    'gr-0/0/0' => {
        'state' => 'enabled',
        'condition' => 'up',
        'description' => '',
        'mtu' => 'Unlimited',
        'speed' => '800mbps'
    },
    'fe-1/0/0' => {
        'state' => 'enabled',
        'mtu' => '1514',
        'speed' => '100mbps',
        'condition' => 'up',
        'description' => 'Physical FE-> Common segment'
    },
    'dsc' => {
        'state' => 'enabled',
        'speed' => 'Unspecified',
        'mtu' => 'Unlimited',
        'description' => '',
        'condition' => 'up'
    },
    'pimd' => {
        'state' => 'enabled',
        'description' => '',
        'condition' => 'up',
        'mtu' => 'Unlimited',
        'speed' => 'Unlimited'
    },
    'mtun' => {
        'state' => 'enabled',
        'condition' => 'up',
        'description' => '',
        'speed' => 'Unlimited',
        'mtu' => 'Unlimited'
    }
};