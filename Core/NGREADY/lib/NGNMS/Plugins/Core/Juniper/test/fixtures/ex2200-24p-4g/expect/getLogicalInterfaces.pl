#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
{
    'lo0.16384' => {
        'description' => '',
        'physical_interface_name' => 'lo0',
        'ip' => '127.0.0.1',
        'mask' => '255.255.255.255'
    },
    'vlan.2' => {
        'description' => 'Server backoffice LAN',
        'physical_interface_name' => 'vlan',
        'ip' => '192.168.4.253',
        'mask' => '255.255.255.0'
    },
    'vlan.4' => {
        'description' => 'This is Dual-link to J -- TEST',
        'ip' => '10.20.4.2',
        'physical_interface_name' => 'vlan',
        'mask' => '255.255.252.0'
    },
    'vlan.1' => {
        'mask' => '255.255.255.252',
        'ip' => '10.20.2.2',
        'physical_interface_name' => 'vlan',
        'description' => 'Management_VLAN1'
    },
    'vlan.3' => {
        'mask' => '255.255.255.0',
        'description' => 'This is test description for !@#$%^^&*()_+|><MNM~12345667789.',
        'physical_interface_name' => 'vlan',
        'ip' => '10.254.254.253'
    },
    'lo0.0' => {
        'physical_interface_name' => 'lo0',
        'ip' => '10.4.4.4',
        'description' => '',
        'mask' => '255.255.255.255'
    },
    'bme0.32768:2' => {
        'description' => '',
        'ip' => '128.0.0.32',
        'physical_interface_name' => 'bme0',
        'mask' => '192.0.0.0'
    },
    'bme0.32768:0' => {
        'mask' => '192.0.0.0',
        'physical_interface_name' => 'bme0',
        'ip' => '128.0.0.1',
        'description' => ''
    },
    'bme0.32768:1' => {
        'ip' => '128.0.0.16',
        'physical_interface_name' => 'bme0',
        'description' => '',
        'mask' => '192.0.0.0'
    }
};