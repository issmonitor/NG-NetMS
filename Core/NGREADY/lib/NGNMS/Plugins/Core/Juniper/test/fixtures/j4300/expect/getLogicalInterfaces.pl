#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
{
    'fe-0/0/0.0' => {
        'physical_interface_name' => 'fe-0/0/0',
        'description' => '',
        'mask' => '255.255.255.252',
        'ip' => '10.20.2.1'
    },
    'fe-0/0/1.0:0' => {
        'physical_interface_name' => 'fe-0/0/1',
        'description' => 'description for unit 0',
        'ip' => '172.17.0.1',
        'mask' => '255.255.255.0'
    },
    'lo0.0' => {
        'physical_interface_name' => 'lo0',
        'description' => '',
        'ip' => '10.3.3.3',
        'mask' => '255.255.255.255'
    },
    'fe-0/0/1.0:1' => {
        'ip' => '172.17.11.1',
        'mask' => '255.255.255.0',
        'description' => 'description for unit 0',
        'physical_interface_name' => 'fe-0/0/1'
    },
    'fe-1/0/0.0' => {
        'description' => 'Logical_FE->_Common_segment',
        'ip' => '192.168.3.200',
        'mask' => '255.255.255.0',
        'physical_interface_name' => 'fe-1/0/0'
    },
    'fe-0/0/1.1' => {
        'description' => 'description for unit 1',
        'mask' => '255.255.255.0',
        'ip' => '172.17.2.1',
        'physical_interface_name' => 'fe-0/0/1'
    },
    'lo0.16385:3' => {
        'ip' => '128.0.1.16',
        'mask' => '255.255.255.255',
        'description' => '',
        'physical_interface_name' => 'lo0'
    },
    'fe-2/0/0.0' => {
        'ip' => '10.20.4.1',
        'mask' => '255.255.252.0',
        'description' => '',
        'physical_interface_name' => 'fe-2/0/0'
    },
    'lo0.16385:2' => {
        'physical_interface_name' => 'lo0',
        'mask' => '255.255.255.255',
        'ip' => '128.0.0.1',
        'description' => ''
    },
    'lo0.16385:1' => {
        'description' => '',
        'mask' => '255.255.255.255',
        'ip' => '10.0.0.16',
        'physical_interface_name' => 'lo0'
    },
    'lo0.16385:0' => {
        'physical_interface_name' => 'lo0',
        'mask' => '255.255.255.255',
        'ip' => '10.0.0.1',
        'description' => ''
    }
};
