#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
{
    'HCNACORE.3100:4'     => {
        'mask'                    => '255.255.255.0',
        'description'             => '',
        'ip'                      => '89.185.26.1',
        'physical_interface_name' => 'HCNACORE.3100'
    },
    'DGSCLACCESS.3203'    => {
        'ip'                      => '93.185.211.129',
        'mask'                    => '255.255.255.128',
        'description'             => '',
        'physical_interface_name' => 'DGSCLACCESS.3203'
    },
    'DOCSIS.301:1'        => {
        'mask'                    => '255.255.252.0',
        'description'             => '',
        'ip'                      => '109.72.112.1',
        'physical_interface_name' => 'DOCSIS.301'
    },
    'CLACCESS.3202:4'     => {
        'ip'                      => '109.72.119.1',
        'mask'                    => '255.255.255.0',
        'description'             => '',
        'physical_interface_name' => 'CLACCESS.3202'
    },
    'Mgmt.4095'           => {
        'physical_interface_name' => 'Mgmt.4095',
        'ip'                      => '192.168.30.100',
        'mask'                    => '255.255.255.0',
        'description'             => ''
    },
    'HCNACORE.3100:1'     => {
        'description'             => '',
        'mask'                    => '255.255.255.0',
        'ip'                      => '81.22.141.1',
        'physical_interface_name' => 'HCNACORE.3100'
    },
    'OCHADINT.200:0'      => {
        'mask'                    => '255.255.255.252',
        'description'             => '',
        'ip'                      => '109.72.122.17',
        'physical_interface_name' => 'OCHADINT.200'
    },
    'CLACCESS.3202:2'     => {
        'physical_interface_name' => 'CLACCESS.3202',
        'mask'                    => '255.255.255.0',
        'description'             => '',
        'ip'                      => '93.185.208.1'
    },
    'PON-MANAGER.10'      => {
        'physical_interface_name' => 'PON-MANAGER.10',
        'mask'                    => '255.255.255.0',
        'description'             => '',
        'ip'                      => '192.168.31.1'
    },
    'OCHADNET.201'        => {
        'physical_interface_name' => 'OCHADNET.201',
        'ip'                      => '10.44.255.126',
        'mask'                    => '255.255.255.128',
        'description'             => ''
    },
    'SWACCESS.3201:1'     => {
        'ip'                      => '10.230.136.1',
        'mask'                    => '255.255.255.0',
        'description'             => '',
        'physical_interface_name' => 'SWACCESS.3201'
    },
    'HCNACORE.3100:2'     => {
        'physical_interface_name' => 'HCNACORE.3100',
        'mask'                    => '255.255.255.0',
        'description'             => '',
        'ip'                      => '89.185.24.1'
    },
    'Default.1:0'         => {
        'ip'                      => '10.230.0.1',
        'description'             => '',
        'mask'                    => '255.255.224.0',
        'physical_interface_name' => 'Default.1'
    },
    'Default.1:2'         => {
        'ip'                      => '192.168.15.95',
        'mask'                    => '255.255.255.0',
        'description'             => '',
        'physical_interface_name' => 'Default.1'
    },
    'super-pon-irel.2000' => {
        'physical_interface_name' => 'super-pon-irel.2000',
        'mask'                    => '255.255.255.0',
        'description'             => '',
        'ip'                      => '93.185.212.1'
    },
    'SWACCESS.3201:0'     => {
        'physical_interface_name' => 'SWACCESS.3201',
        'mask'                    => '255.255.255.0',
        'description'             => '',
        'ip'                      => '10.230.134.1'
    },
    'DOCSIS.301:0'        => {
        'physical_interface_name' => 'DOCSIS.301',
        'ip'                      => '10.220.64.1',
        'mask'                    => '255.255.224.0',
        'description'             => ''
    },
    'CLACCESS.3202:5'     => {
        'ip'                      => '109.72.120.1',
        'mask'                    => '255.255.255.0',
        'description'             => '',
        'physical_interface_name' => 'CLACCESS.3202'
    },
    'TVRTPC.205'          => {
        'description'             => '',
        'mask'                    => '255.255.255.0',
        'ip'                      => '192.168.21.137',
        'physical_interface_name' => 'TVRTPC.205'
    },
    'OCHADINT.200:1'      => {
        'mask'                    => '255.255.255.252',
        'description'             => '',
        'ip'                      => '109.72.122.21',
        'physical_interface_name' => 'OCHADINT.200'
    },
    'CLACCESS.3202:1'     => {
        'ip'                      => '81.22.140.1',
        'mask'                    => '255.255.255.0',
        'description'             => '',
        'physical_interface_name' => 'CLACCESS.3202'
    },
    'CORELAN.100'         => {
        'ip'                      => '109.72.122.40',
        'description'             => '',
        'mask'                    => '255.255.255.224',
        'physical_interface_name' => 'CORELAN.100'
    },
    'CLACCESS.3202:3'     => {
        'physical_interface_name' => 'CLACCESS.3202',
        'ip'                      => '109.72.117.1',
        'description'             => '',
        'mask'                    => '255.255.255.0'
    },
    'LINEAGE.102:0'       => {
        'physical_interface_name' => 'LINEAGE.102',
        'description'             => '',
        'mask'                    => '255.255.255.240',
        'ip'                      => '109.72.122.161'
    },
    'Default.1:1'         => {
        'physical_interface_name' => 'Default.1',
        'ip'                      => '10.230.64.1',
        'description'             => '',
        'mask'                    => '255.255.224.0'
    },
    'DOCSIS.301:2'        => {
        'ip'                      => '192.168.22.1',
        'description'             => '',
        'mask'                    => '255.255.255.0',
        'physical_interface_name' => 'DOCSIS.301'
    },
    'HCNASWITCH.3101:1'   => {
        'description'             => '',
        'mask'                    => '255.255.255.0',
        'ip'                      => '10.230.133.1',
        'physical_interface_name' => 'HCNASWITCH.3101'
    },
    'HCNACORE.3100:3'     => {
        'ip'                      => '89.185.25.1',
        'description'             => '',
        'mask'                    => '255.255.255.0',
        'physical_interface_name' => 'HCNACORE.3100'
    },
    'CLACCESS.3202:0'     => {
        'description'             => '',
        'mask'                    => '255.255.255.128',
        'ip'                      => '93.185.211.1',
        'physical_interface_name' => 'CLACCESS.3202'
    },
    'HCNASWITCH.3101:0'   => {
        'physical_interface_name' => 'HCNASWITCH.3101',
        'mask'                    => '255.255.255.0',
        'description'             => '',
        'ip'                      => '10.230.132.1'
    },
    'Pronet.103'          => {
        'physical_interface_name' => 'Pronet.103',
        'ip'                      => '109.72.122.25',
        'mask'                    => '255.255.255.252',
        'description'             => ''
    },
    'HCNACORE.3100:0'     => {
        'physical_interface_name' => 'HCNACORE.3100',
        'description'             => '',
        'mask'                    => '255.255.252.0',
        'ip'                      => '10.230.128.1'
    },
    'trinity.289'         => {
        'ip'                      => '10.111.141.1',
        'mask'                    => '255.255.255.0',
        'description'             => '',
        'physical_interface_name' => 'trinity.289'
    },
    'LINEAGE.102:1'       => {
        'physical_interface_name' => 'LINEAGE.102',
        'ip'                      => '109.72.122.177',
        'mask'                    => '255.255.255.248',
        'description'             => ''
    }
};

