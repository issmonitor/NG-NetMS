#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
{
    'ge-0/0/3.0' => {
        'physical_interface_name' => 'ge-0/0/3',
        'ip' => '192.168.1.1',
        'mask' => '255.255.255.252',
        'description' => 'isis-to-router-test-2'
    },
    'lo0.0' => {
        'physical_interface_name' => 'lo0',
        'ip' => '192.168.2.1',
        'mask' => '255.255.255.255',
        'description' => ''
    },
    'ge-0/0/2.0:0' => {
        'description' => '',
        'physical_interface_name' => 'ge-0/0/2',
        'mask' => '255.255.255.240',
        'ip' => '37.139.142.225'
    },
    'ge-0/0/2.0:1' => {
        'description' => '',
        'physical_interface_name' => 'ge-0/0/2',
        'ip' => '37.139.142.227',
        'mask' => '255.255.255.240'
    },
    'lo0.16385:2' => {
        'mask' => '255.255.255.255',
        'ip' => '128.0.0.1',
        'physical_interface_name' => 'lo0',
        'description' => ''
    },
    'ge-0/0/0.0' => {
        'ip' => '37.139.141.21',
        'mask' => '255.255.255.240',
        'physical_interface_name' => 'ge-0/0/0',
        'description' => ''
    },
    'lo0.16385:1' => {
        'ip' => '10.0.0.16',
        'mask' => '255.255.255.255',
        'physical_interface_name' => 'lo0',
        'description' => ''
    },
    'lo0.16385:3' => {
        'description' => '',
        'mask' => '255.255.255.255',
        'ip' => '128.0.1.16',
        'physical_interface_name' => 'lo0'
    },
    'lo0.16385:0' => {
        'description' => '',
        'physical_interface_name' => 'lo0',
        'ip' => '10.0.0.1',
        'mask' => '255.255.255.255'
    }
};