#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
{
    'Vlan400:1' => {
        'description' => 'Vlan400:: VEGA-TV',
        'ip' => '192.168.55.9',
        'physical_interface_name' => 'Vlan400',
        'mask' => '255.255.255.252'
    },
    'Vlan252' => {
        'ip' => '109.72.122.29',
        'physical_interface_name' => 'Vlan252',
        'mask' => '255.255.255.252',
        'description' => 'Vlan252:: RealTransHolding'
    },
    'Vlan100:1' => {
        'ip' => '109.72.122.60',
        'physical_interface_name' => 'Vlan100',
        'mask' => '255.255.255.224',
        'description' => 'Vlan100:: CoreLan'
    },
    'Vlan203' => {
        'mask' => '255.255.255.252',
        'physical_interface_name' => 'Vlan203',
        'ip' => '92.242.122.190',
        'description' => 'Vlan203:: FTCOM-INET'
    },
    'Vlan13' => {
        'description' => 'Vlan13:: ',
        'mask' => '255.255.255.252',
        'physical_interface_name' => 'Vlan13',
        'ip' => '109.72.122.5'
    },
    'Vlan214' => {
        'description' => 'Vlan214:: SigmaTV',
        'mask' => '255.255.255.248',
        'physical_interface_name' => 'Vlan214',
        'ip' => '109.72.122.185'
    },
    'Loopback0' => {
        'description' => 'Loopback0:: ',
        'mask' => '255.255.255.255',
        'ip' => '192.168.55.100',
        'physical_interface_name' => 'Loopback0'
    },
    'Vlan2967' => {
        'description' => 'Vlan2967:: PIM-ALTAIRMAR',
        'mask' => '255.255.255.252',
        'physical_interface_name' => 'Vlan2967',
        'ip' => '192.168.55.5'
    },
    'Vlan507' => {
        'description' => 'Vlan507:: ',
        'ip' => '192.168.254.82',
        'physical_interface_name' => 'Vlan507',
        'mask' => '255.255.255.252'
    },
    'Vlan445' => {
        'physical_interface_name' => 'Vlan445',
        'ip' => '46.164.158.254',
        'mask' => '255.255.255.252',
        'description' => 'Vlan445:: DATAGROUP-INTERNE'
    },
    'Vlan100:0' => {
        'mask' => '255.255.255.224',
        'ip' => '109.72.122.61',
        'physical_interface_name' => 'Vlan100',
        'description' => 'Vlan100:: CoreLan'
    },
    'Vlan2966' => {
        'description' => 'Vlan2966:: PIM-ROUTE-TO-KIEV',
        'mask' => '255.255.255.252',
        'ip' => '192.168.55.1',
        'physical_interface_name' => 'Vlan2966'
    },
    'Vlan201' => {
        'description' => 'Vlan201:: OSCHABANK Internal network',
        'mask' => '255.255.255.128',
        'ip' => '10.44.255.126',
        'physical_interface_name' => 'Vlan201'
    },
    'Vlan1332' => {
        'mask' => '255.255.255.252',
        'physical_interface_name' => 'Vlan1332',
        'ip' => '213.133.161.182',
        'description' => 'Vlan1332:: '
    },
    'Vlan400:0' => {
        'ip' => '109.72.122.13',
        'physical_interface_name' => 'Vlan400',
        'mask' => '255.255.255.252',
        'description' => 'Vlan400:: VEGA-TV'
    },
    'Vlan2100' => {
        'description' => 'Vlan2100:: Mariupol Internet Exchange',
        'mask' => '255.255.255.248',
        'physical_interface_name' => 'Vlan2100',
        'ip' => '193.46.210.186'
    },
    'Vlan2970' => {
        'description' => 'Vlan2970:: ',
        'mask' => '255.255.255.0',
        'ip' => '192.168.72.100',
        'physical_interface_name' => 'Vlan2970'
    }
};
