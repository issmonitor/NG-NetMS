use strict;
use warnings;
{
    'TRAFFIC_EDGE.50'        => {
        'ip'                      => '129.192.44.193',
        'description'             => 'TRAFFIC-EDGE-INTERNAL',
        'physical_interface_name' => 'TRAFFIC_EDGE.50',
        'mask'                    => '255.255.255.192'
    },
    'OAM_INT.41'             => {
        'ip'                      => '192.168.1.1',
        'description'             => 'OAM_INT PRIVATE COMMON FOR ALL REALMS',
        'physical_interface_name' => 'OAM_INT.41',
        'mask'                    => '255.255.255.0'
    },
    'TRAFFIC_DMZ.20'         => {
        'physical_interface_name' => 'TRAFFIC_DMZ.20',
        'description'             => 'TRAFFIC-DMZ-ORIGINS',
        'ip'                      => '129.192.45.129',
        'mask'                    => '255.255.255.128'
    },
    'BACKEND_EDGE_INT.421:1' => {
        'description'             => 'BACKEND FOR EDGE REALM',
        'ip'                      => '81.22.140.1',
        'physical_interface_name' => 'BACKEND_EDGE_INT.421',
        'mask'                    => '255.255.255.0'
    },
    'OOB_EXT.9'              => {
        'description'             => 'OOB SEGMENT',
        'ip'                      => '129.192.44.1',
        'physical_interface_name' => 'OOB_EXT.9',
        'mask'                    => '255.255.255.192'
    },
    'TRAFFIC_EXT_CORE.1805'  => {
        'mask'                    => '255.255.255.252',
        'physical_interface_name' => 'TRAFFIC_EXT_CORE.1805',
        'description'             => 'TRAFFIC-CORE-EXT',
        'ip'                      => '77.243.174.102'
    },
    'BACKEND_EDGE_INT.421:0' => {
        'mask'                    => '255.255.255.0',
        'ip'                      => '192.168.21.1',
        'description'             => 'BACKEND FOR EDGE REALM',
        'physical_interface_name' => 'BACKEND_EDGE_INT.421'
    },
    'TRAFFIC_CORE.40'        => {
        'physical_interface_name' => 'TRAFFIC_CORE.40',
        'ip'                      => '129.192.45.1',
        'description'             => 'TRAFFIC-CORE-INTERNAL',
        'mask'                    => '255.255.255.128'
    },
    'ACCESS.30'              => {
        'mask'                    => '255.255.255.192',
        'physical_interface_name' => 'ACCESS.30',
        'ip'                      => '129.192.44.129',
        'description'             => 'SIMULATED ACCESS'
    },
    'TRAFFIC_EXT_EDGE.1804'  => {
        'mask'                    => '255.255.255.252',
        'physical_interface_name' => 'TRAFFIC_EXT_EDGE.1804',
        'ip'                      => '77.243.174.54',
        'description'             => 'TRAFFIC-EDGE-EXT'
    },
    'BACKEND_EDGE_INT.421:4' => {
        'mask'                    => '255.255.255.0',
        'physical_interface_name' => 'BACKEND_EDGE_INT.421',
        'description'             => 'BACKEND FOR EDGE REALM',
        'ip'                      => '109.72.119.1'
    },
    'BACKEND_EDGE_INT.421:3' => {
        'physical_interface_name' => 'BACKEND_EDGE_INT.421',
        'description'             => 'BACKEND FOR EDGE REALM',
        'ip'                      => '109.72.117.1',
        'mask'                    => '255.255.255.0'
    },
    'BACKEND_INT.42'         => {
        'physical_interface_name' => 'BACKEND_INT.42',
        'description'             => 'BACKEND FOR ALL REALMS',
        'ip'                      => '192.168.2.1',
        'mask'                    => '255.255.255.0'
    },
    'BACKEND_EDGE_INT.421:5' => {
        'description'             => 'BACKEND FOR EDGE REALM',
        'ip'                      => '109.72.120.1',
        'physical_interface_name' => 'BACKEND_EDGE_INT.421',
        'mask'                    => '255.255.255.0'
    },
    'OAM_EDGE_INT.411'       => {
        'mask'                    => '255.255.255.0',
        'physical_interface_name' => 'OAM_EDGE_INT.411',
        'description'             => 'OAM_EDGE_INT privately',
        'ip'                      => '192.168.11.1'
    },
    'BACKEND_EDGE_INT.421:2' => {
        'mask'                    => '255.255.255.0',
        'physical_interface_name' => 'BACKEND_EDGE_INT.421',
        'ip'                      => '93.185.208.1',
        'description'             => 'BACKEND FOR EDGE REALM'
    },
    'MULTICAST.60'           => {
        'mask'                    => '255.255.255.0',
        'description'             => 'MULTICAST SEGMENT',
        'ip'                      => '192.168.100.1',
        'physical_interface_name' => 'MULTICAST.60'
    },
    'OAM_EXT.10'             => {
        'mask'                    => '255.255.255.192',
        'physical_interface_name' => 'OAM_EXT.10',
        'description'             => 'OAM COMMON FOR ALL REALMS',
        'ip'                      => '129.192.44.65'
    }
};
