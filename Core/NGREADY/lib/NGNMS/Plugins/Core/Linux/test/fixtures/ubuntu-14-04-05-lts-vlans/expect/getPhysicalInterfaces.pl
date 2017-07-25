#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
{
    'eth0' => {
        'state' => 'up',
        'condition' => 'enabled',
        'speed' => '10000Mb/s',
        'description' => '00:0c:29:7d:ac:46',
        'mtu' => '1500'
    },
    'eth1' => {
        'mtu' => '1500',
        'description' => '00:0c:29:7d:ac:50',
        'speed' => '10000Mb/s',
        'state' => 'up',
        'condition' => 'enabled'
    },
    'lo' => {
        'speed' => 'Unspecified',
        'state' => 'up',
        'condition' => 'UNKNOWN',
        'description' => '00:00:00:00:00:00',
        'mtu' => '65536'
    },
    'docker0' => {
        'description' => '02:42:43:e8:67:3a',
        'mtu' => '1500',
        'state' => 'up',
        'condition' => 'disabled',
        'speed' => 'Unspecified'
    }
};