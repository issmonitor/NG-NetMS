#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
{
    'bme0.32768:1' => {
        'ip' => '128.0.0.16',
        'mask' => '192.0.0.0',
        'physical_interface_name' => 'bme0',
        'description' => ''
    },
    'vlan.100' => {
        'description' => '',
        'mask' => '255.255.255.224',
        'ip' => '109.72.122.41',
        'physical_interface_name' => 'vlan'
    },
    'lo0.16384' => {
        'description' => '',
        'physical_interface_name' => 'lo0',
        'mask' => '255.255.255.255',
        'ip' => '127.0.0.1'
    },
    'vlan.2959' => {
        'description' => '',
        'physical_interface_name' => 'vlan',
        'ip' => '192.168.80.99',
        'mask' => '255.255.255.0'
    },
    'lo0.0' => {
        'description' => '',
        'physical_interface_name' => 'lo0',
        'mask' => '255.255.255.255',
        'ip' => '127.0.0.1'
    },
    'bme0.32768:0' => {
        'description' => '',
        'ip' => '128.0.0.1',
        'mask' => '192.0.0.0',
        'physical_interface_name' => 'bme0'
    },
    'vlan.2970' => {
        'description' => '',
        'ip' => '192.168.72.1',
        'mask' => '255.255.255.0',
        'physical_interface_name' => 'vlan'
    },
    'vlan.2961' => {
        'mask' => '255.255.255.0',
        'ip' => '192.168.50.1',
        'physical_interface_name' => 'vlan',
        'description' => ''
    },
    'bme0.32768:2' => {
        'description' => '',
        'physical_interface_name' => 'bme0',
        'mask' => '192.0.0.0',
        'ip' => '128.0.0.32'
    }
};


