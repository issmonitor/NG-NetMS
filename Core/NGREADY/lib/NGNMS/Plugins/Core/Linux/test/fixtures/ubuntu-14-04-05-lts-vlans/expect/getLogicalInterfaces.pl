use strict;
use warnings;
{
    'eth1.10' => {
        'ip' => '172.17.133.11',
        'mask' => '255.255.255.0',
        'physical_interface_name' => 'eth1',
        'description' => 'enabled'
    },
    'eth1.20:1' => {
        'ip' => '172.17.20.12',
        'mask' => '255.255.255.0',
        'description' => 'enabled',
        'physical_interface_name' => 'eth1'
    },
    'eth1.20:0' => {
        'physical_interface_name' => 'eth1',
        'description' => 'enabled',
        'mask' => '255.255.255.0',
        'ip' => '172.17.20.11'
    },
    'lo' => {
        'physical_interface_name' => 'lo',
        'description' => 'UNKNOWN',
        'mask' => '255.0.0.0',
        'ip' => '127.0.0.1'
    },
    'docker0' => {
        'description' => 'disabled',
        'physical_interface_name' => 'docker0',
        'ip' => '172.18.0.1',
        'mask' => '255.255.0.0'
    },
    'eth0' => {
        'ip' => '192.168.254.117',
        'mask' => '255.255.255.0',
        'physical_interface_name' => 'eth0',
        'description' => 'enabled'
    }
};