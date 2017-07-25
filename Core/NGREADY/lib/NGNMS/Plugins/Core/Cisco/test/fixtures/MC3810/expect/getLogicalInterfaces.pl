#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
{
    'Ethernet0:1' => {
        'description' => 'Ethernet0:: C1->Common segment',
        'physical_interface_name' => 'Ethernet0',
        'mask' => '255.255.255.0',
        'ip' => '192.168.4.1'
    },
    'Loopback0' => {
        'description' => 'Loopback0:: C1-RouterID',
        'physical_interface_name' => 'Loopback0',
        'mask' => '255.255.255.255',
        'ip' => '10.1.1.1'
    },
    'Serial1' => {
        'ip' => '20.0.1.1',
        'description' => 'Serial1:: E1 line to C1<->C2',
        'physical_interface_name' => 'Serial1',
        'mask' => '255.255.255.252'
    },
    'Ethernet0:0' => {
        'ip' => '192.168.3.202',
        'physical_interface_name' => 'Ethernet0',
        'description' => 'Ethernet0:: C1->Common segment',
        'mask' => '255.255.255.0'
    },
    'Serial0' => {
        'ip' => '192.168.20.1',
        'description' => 'Serial0:: Home_VPN1',
        'mask' => '255.255.255.248',
        'physical_interface_name' => 'Serial0'
    }
};