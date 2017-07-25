#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
[
    {
        'hw_amount' => '',
        'hw_name' => 'Chassis',
        'hw_ver' => 'CZC7440YYC',
        'hw_item' => 'Chassis'
    },
    {
        'hw_amount' => '8',
        'hw_ver' => '',
        'hw_item' => 'Chassis',
        'hw_name' => 'CPU core number'
    },
    {
        'hw_amount' => '',
        'hw_item' => 'Chassis',
        'hw_ver' => '2000MHz',
        'hw_name' => 'CPU 1'
    },
    {
        'hw_amount' => '',
        'hw_name' => 'CPU 2',
        'hw_ver' => '4000MHz',
        'hw_item' => 'Chassis'
    },
    {
        'hw_item' => 'Memory',
        'hw_ver' => '667MHz',
        'hw_name' => 'DIMM 1A',
        'hw_amount' => '8192MB'
    },
    {
        'hw_amount' => '8192MB',
        'hw_name' => 'DIMM 2C',
        'hw_item' => 'Memory',
        'hw_ver' => '667MHz'
    },
    {
        'hw_ver' => '667MHz',
        'hw_item' => 'Memory',
        'hw_name' => 'DIMM 3A',
        'hw_amount' => '8192MB'
    },
    {
        'hw_item' => 'Memory',
        'hw_ver' => '667MHz',
        'hw_name' => 'DIMM 4C',
        'hw_amount' => '8192MB'
    },
    {
        'hw_name' => 'DIMM 5B',
        'hw_ver' => '667MHz',
        'hw_item' => 'Memory',
        'hw_amount' => '8192MB'
    },
    {
        'hw_ver' => '667MHz',
        'hw_item' => 'Memory',
        'hw_name' => 'DIMM 6D',
        'hw_amount' => '8192MB'
    },
    {
        'hw_amount' => '8192MB',
        'hw_item' => 'Memory',
        'hw_ver' => '667MHz',
        'hw_name' => 'DIMM 7B'
    },
    {
        'hw_amount' => '8192MB',
        'hw_ver' => '667MHz',
        'hw_item' => 'Memory',
        'hw_name' => 'DIMM 8D'
    },
    {
        'hw_amount' => 'I/O Board',
        'hw_item' => 'Fan',
        'hw_ver' => '',
        'hw_name' => 'Fan 1'
    },
    {
        'hw_amount' => 'I/O Board',
        'hw_name' => 'Fan 2',
        'hw_ver' => '',
        'hw_item' => 'Fan'
    },
    {
        'hw_amount' => 'CPU',
        'hw_name' => 'Fan 3',
        'hw_ver' => '',
        'hw_item' => 'Fan'
    },
    {
        'hw_amount' => 'CPU',
        'hw_name' => 'Fan 4',
        'hw_item' => 'Fan',
        'hw_ver' => ''
    },
    {
        'hw_name' => 'Fan 5',
        'hw_ver' => '',
        'hw_item' => 'Fan',
        'hw_amount' => 'CPU'
    },
    {
        'hw_name' => 'Fan 6',
        'hw_ver' => '',
        'hw_item' => 'Fan',
        'hw_amount' => 'CPU'
    },
    {
        'hw_name' => 'PCI Express slot 1',
        'hw_item' => 'Slot',
        'hw_ver' => '',
        'hw_amount' => 'width 4x'
    },
    {
        'hw_amount' => 'width 4x',
        'hw_name' => 'PCI Express slot 2',
        'hw_ver' => '',
        'hw_item' => 'Slot'
    },
    {
        'hw_item' => 'Slot',
        'hw_ver' => '',
        'hw_name' => 'PCI Express slot 3',
        'hw_amount' => 'width 4x'
    },
    {
        'hw_amount' => 'width 8x',
        'hw_name' => 'PCI Express slot 4',
        'hw_ver' => '',
        'hw_item' => 'Slot'
    },
    {
        'hw_item' => 'Slot',
        'hw_ver' => '',
        'hw_name' => 'PCI Express slot 5',
        'hw_amount' => 'width 8x'
    },
    {
        'hw_item' => 'Sensor',
        'hw_ver' => 'CPU 1',
        'hw_name' => 'VRM 1',
        'hw_amount' => 'Voltage'
    },
    {
        'hw_name' => 'VRM 2',
        'hw_item' => 'Sensor',
        'hw_ver' => 'CPU 2',
        'hw_amount' => 'Voltage'
    },
    {
        'hw_amount' => 'Temperature',
        'hw_name' => 'Temp 1',
        'hw_ver' => 'I/O Board Zone',
        'hw_item' => 'Sensor'
    },
    {
        'hw_amount' => 'Temperature',
        'hw_ver' => 'Ambient Zone',
        'hw_item' => 'Sensor',
        'hw_name' => 'Temp 2'
    },
    {
        'hw_amount' => 'Temperature',
        'hw_ver' => 'CPU 1',
        'hw_item' => 'Sensor',
        'hw_name' => 'Temp 3'
    },
    {
        'hw_amount' => 'Temperature',
        'hw_item' => 'Sensor',
        'hw_ver' => 'CPU 1',
        'hw_name' => 'Temp 4'
    },
    {
        'hw_ver' => 'Power Supply Zone',
        'hw_item' => 'Sensor',
        'hw_name' => 'Temp 5',
        'hw_amount' => 'Temperature'
    },
    {
        'hw_amount' => 'Temperature',
        'hw_name' => 'Temp 6',
        'hw_ver' => 'CPU 2',
        'hw_item' => 'Sensor'
    },
    {
        'hw_item' => 'Sensor',
        'hw_ver' => 'CPU 2',
        'hw_name' => 'Temp 7',
        'hw_amount' => 'Temperature'
    },
    {
        'hw_name' => 'Power Supply 1',
        'hw_item' => 'Power',
        'hw_ver' => '',
        'hw_amount' => ''
    },
    {
        'hw_ver' => '',
        'hw_item' => 'Power',
        'hw_name' => 'Power Supply 2',
        'hw_amount' => ''
    },
    {
        'hw_amount' => '',
        'hw_name' => 'iLO 2 Advanced',
        'hw_ver' => '',
        'hw_item' => 'iLO board'
    }
];