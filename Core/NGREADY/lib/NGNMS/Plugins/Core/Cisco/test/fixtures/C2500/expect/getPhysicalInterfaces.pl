#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
{
    'Serial1' => {
        'state' => 'enabled',
        'description' => 'E1 C2<->C1',
        'speed' => '1544 Kbit',
        'condition' => 'up',
        'mtu' => '1500'
    },
    'Ethernet0' => {
        'description' => '',
        'speed' => '10000 Kbit',
        'condition' => 'down',
        'state' => 'disabled',
        'mtu' => '1500'
    },
    'Serial0' => {
        'condition' => 'down',
        'speed' => '1544 Kbit',
        'description' => '',
        'state' => 'disabled',
        'mtu' => '1500'
    },
    'Loopback0' => {
        'state' => 'enabled',
        'condition' => 'up',
        'description' => 'C2-RouterID',
        'speed' => '8000000 Kbit',
        'mtu' => '1514'
    }
};                                                ;