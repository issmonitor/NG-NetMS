#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
{
    'gre' => {
        'description' => '',
        'speed' => 'Unlimited',
        'state' => 'enabled',
        'condition' => 'up',
        'mtu' => 'Unlimited'
    },
    'mt-0/0/0' => {
        'mtu' => 'Unlimited',
        'condition' => 'up',
        'state' => 'enabled',
        'description' => '',
        'speed' => '800mbps'
    },
    'lt-0/0/0' => {
        'mtu' => 'Unlimited',
        'condition' => 'up',
        'state' => 'enabled',
        'speed' => '800mbps',
        'description' => ''
    },
    'lo0' => {
        'state' => 'enabled',
        'description' => '',
        'speed' => 'Unspecified',
        'mtu' => 'Unlimited',
        'condition' => 'up'
    },
    'mtun' => {
        'state' => 'enabled',
        'description' => '',
        'speed' => 'Unlimited',
        'condition' => 'up',
        'mtu' => 'Unlimited'
    },
    'sp-0/0/0' => {
        'condition' => 'up',
        'mtu' => '9192',
        'state' => 'enabled',
        'description' => '',
        'speed' => '800mbps'
    },
    'ipip' => {
        'speed' => 'Unlimited',
        'description' => '',
        'state' => 'enabled',
        'mtu' => 'Unlimited',
        'condition' => 'up'
    },
    'lsi' => {
        'speed' => 'Unlimited',
        'description' => '',
        'state' => 'enabled',
        'condition' => 'up',
        'mtu' => '1496'
    },
    'ls-0/0/0' => {
        'speed' => '',
        'description' => '',
        'state' => 'enabled',
        'mtu' => '1504',
        'condition' => 'up'
    },
    'pime' => {
        'state' => 'enabled',
        'description' => '',
        'speed' => 'Unlimited',
        'condition' => 'up',
        'mtu' => 'Unlimited'
    },
    'ge-0/0/1' => {
        'state' => 'enabled',
        'speed' => '100mbps',
        'description' => 'switch-uplink-to-port-50',
        'mtu' => '1514',
        'condition' => 'up'
    },
    'pd-0/0/0' => {
        'state' => 'enabled',
        'speed' => '800mbps',
        'description' => '',
        'mtu' => 'Unlimited',
        'condition' => 'up'
    },
    'ge-0/0/0' => {
        'description' => '',
        'speed' => '100mbps',
        'state' => 'enabled',
        'mtu' => '1514',
        'condition' => 'up'
    },
    'ge-0/0/3' => {
        'condition' => 'up',
        'mtu' => '1514',
        'state' => 'enabled',
        'speed' => '1000mbps',
        'description' => ''
    },
    'pimd' => {
        'condition' => 'up',
        'mtu' => 'Unlimited',
        'state' => 'enabled',
        'description' => '',
        'speed' => 'Unlimited'
    },
    'pp0' => {
        'condition' => 'up',
        'mtu' => '1532',
        'state' => 'enabled',
        'description' => '',
        'speed' => 'Unspecified'
    },
    'tap' => {
        'condition' => 'up',
        'mtu' => 'Unlimited',
        'description' => '',
        'speed' => 'Unlimited',
        'state' => 'enabled'
    },
    'ip-0/0/0' => {
        'state' => 'enabled',
        'description' => '',
        'speed' => '800mbps',
        'mtu' => 'Unlimited',
        'condition' => 'up'
    },
    'ge-0/0/2' => {
        'speed' => '1000mbps',
        'description' => '',
        'state' => 'enabled',
        'mtu' => '1514',
        'condition' => 'up'
    },
    'dsc' => {
        'mtu' => 'Unlimited',
        'condition' => 'up',
        'state' => 'enabled',
        'description' => '',
        'speed' => 'Unspecified'
    },
    'pe-0/0/0' => {
        'mtu' => 'Unlimited',
        'condition' => 'up',
        'state' => 'enabled',
        'speed' => '800mbps',
        'description' => ''
    },
    'gr-0/0/0' => {
        'mtu' => 'Unlimited',
        'condition' => 'up',
        'description' => '',
        'speed' => '800mbps',
        'state' => 'enabled'
    }
};