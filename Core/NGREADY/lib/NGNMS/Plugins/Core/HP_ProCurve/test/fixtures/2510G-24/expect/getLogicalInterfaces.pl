#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
{
    'DEFAULT_VLAN.1' => {
        'physical_interface_name' => 'DEFAULT_VLAN.1',
        'mask' => '255.255.255.0',
        'description' => 'Vlan ID 1',
        'ip' => '192.168.3.210'
    },
    '101 VLANNAME.101' => {
        'physical_interface_name' => '101 VLANNAME.101',
        'mask' => '255.255.255.0',
        'description' => 'Vlan ID 101',
        'ip' => '101.101.101.101'
    }
};