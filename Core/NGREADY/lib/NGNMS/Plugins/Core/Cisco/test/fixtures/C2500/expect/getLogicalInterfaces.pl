#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
{
    'Loopback0' => {
        'mask'                    => '255.255.255.255',
        'ip'                      => '10.2.2.2',
        'description'             => 'Loopback0:: C2-RouterID',
        'physical_interface_name' => 'Loopback0'
    },
    'Serial1'   => {
        'description'             => 'Serial1:: E1 C2<->C1',
        'ip'                      => '20.0.1.2',
        'mask'                    => '255.255.255.252',
        'physical_interface_name' => 'Serial1'
    }
};
