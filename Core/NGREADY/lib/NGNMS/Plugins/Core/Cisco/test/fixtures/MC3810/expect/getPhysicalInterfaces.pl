#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
{
    'Serial0' => {
        'condition' => 'down',
        'state' => 'disabled',
        'mtu' => '1500',
        'speed' => '1544 Kbit',
        'description' => 'Home_VPN1'
    },
    'Serial1' => {
        'state' => 'enabled',
        'mtu' => '1500',
        'description' => 'E1 line to C1<->C2',
        'speed' => '1544 Kbit',
        'condition' => 'up'
    },
    'Loopback0' => {
        'speed' => '8000000 Kbit',
        'mtu' => '1514',
        'description' => 'C1-RouterID',
        'state' => 'enabled',
        'condition' => 'up'
    },
    'Ethernet0' => {
        'state' => 'enabled',
        'speed' => '10000 Kbit',
        'mtu' => '1500',
        'description' => 'C1->Common segment',
        'condition' => 'up'
    }
};