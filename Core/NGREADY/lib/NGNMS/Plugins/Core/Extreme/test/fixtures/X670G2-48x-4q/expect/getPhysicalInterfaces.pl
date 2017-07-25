#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
{
    'Port 49'                => {
        'speed'       => '40G',
        'condition'   => 'down',
        'state'       => 'enabled',
        'description' => ''
    },
    'Port 13'                => {
        'description' => '',
        'condition'   => 'up',
        'state'       => 'enabled',
        'speed'       => '10Gbps'
    },
    'Port 4'                 => {
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => '10Gbps',
        'description' => 'DELL-5-NIC-3'
    },
    'Port 59'                => {
        'description' => '',
        'speed'       => '10G',
        'condition'   => 'down',
        'state'       => 'enabled'
    },
    'Port 8'                 => {
        'condition'   => 'up',
        'state'       => 'enabled',
        'speed'       => '10Gbps',
        'description' => 'DELL-3-NIC-3'
    },
    'Port 46'                => {
        'description' => '',
        'speed'       => '10G',
        'state'       => 'enabled',
        'condition'   => 'down'
    },
    'Port 25'                => {
        'speed'       => '10G',
        'condition'   => 'down',
        'state'       => 'enabled',
        'description' => ''
    },
    'Port 32'                => {
        'condition'   => 'up',
        'state'       => 'enabled',
        'speed'       => '1Gbps',
        'description' => ''
    },
    'Port 45'                => {
        'description' => '',
        'condition'   => 'down',
        'state'       => 'enabled',
        'speed'       => '10G'
    },
    'Port 47'                => {
        'description' => '',
        'state'       => 'enabled',
        'condition'   => 'down',
        'speed'       => '10G'
    },
    'Port 17'                => {
        'speed'       => '10G',
        'state'       => 'enabled',
        'condition'   => 'down',
        'description' => ''
    },
    'TRAFFIC_EXT_CORE.1805'  => {
        'description' => 'TRAFFIC-CORE-EXT',
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => 'Uncpecified'
    },
    'Port 2'                 => {
        'description' => 'DELL-6-NIC-3',
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => '10Gbps'
    },
    'Mgmt.4095'              => {
        'speed'       => 'Uncpecified',
        'state'       => 'enabled',
        'condition'   => 'up',
        'description' => 'Management VLAN'
    },
    'Port 42'                => {
        'description' => '',
        'condition'   => 'up',
        'state'       => 'enabled',
        'speed'       => '1Gbps'
    },
    'Port 9'                 => {
        'description' => 'DELL-2-NIC-2',
        'speed'       => '10Gbps',
        'state'       => 'enabled',
        'condition'   => 'up'
    },
    'OAM_INT.41'             => {
        'description' => 'OAM_INT PRIVATE COMMON FOR ALL REALMS',
        'speed'       => 'Uncpecified',
        'state'       => 'enabled',
        'condition'   => 'up'
    },
    'Port 19'                => {
        'speed'       => '10G',
        'state'       => 'enabled',
        'condition'   => 'down',
        'description' => ''
    },
    'Port 56'                => {
        'condition'   => 'down',
        'state'       => 'enabled',
        'speed'       => '10G',
        'description' => ''
    },
    'Default.1'              => {
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => 'Uncpecified',
        'description' => ''
    },
    'Port 21'                => {
        'description' => '',
        'speed'       => '10G',
        'condition'   => 'down',
        'state'       => 'enabled'
    },
    'Port 36'                => {
        'condition'   => 'up',
        'state'       => 'enabled',
        'speed'       => '1Gbps',
        'description' => ''
    },
    'Port 44'                => {
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => '1Gbps',
        'description' => ''
    },
    'BACKEND_INT.42'         => {
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => 'Uncpecified',
        'description' => 'BACKEND FOR ALL REALMS'
    },
    'Port 64'                => {
        'speed'       => '10G',
        'state'       => 'enabled',
        'condition'   => 'down',
        'description' => ''
    },
    'Port 22'                => {
        'state'       => 'enabled',
        'condition'   => 'down',
        'speed'       => '10G',
        'description' => ''
    },
    'Port 54'                => {
        'description' => '',
        'state'       => 'enabled',
        'condition'   => 'down',
        'speed'       => '10G'
    },
    'Port 1'                 => {
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => '10Gbps',
        'description' => 'DELL-6-NIC-2'
    },
    'Port 16'                => {
        'description' => '',
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => '10Gbps'
    },
    'Port 18'                => {
        'description' => '',
        'speed'       => '10G',
        'condition'   => 'down',
        'state'       => 'enabled'
    },
    'Port 33'                => {
        'description' => '',
        'condition'   => 'up',
        'state'       => 'enabled',
        'speed'       => '1Gbps'
    },
    'Port 14'                => {
        'description' => '',
        'speed'       => '10Gbps',
        'state'       => 'enabled',
        'condition'   => 'up'
    },
    'Port 26'                => {
        'description' => '',
        'speed'       => '10G',
        'condition'   => 'down',
        'state'       => 'enabled'
    },
    'Port 55'                => {
        'description' => '',
        'speed'       => '10G',
        'condition'   => 'down',
        'state'       => 'enabled'
    },
    'Port 48'                => {
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => '1Gbps',
        'description' => ''
    },
    'Port 29'                => {
        'speed'       => '10G',
        'state'       => 'enabled',
        'condition'   => 'down',
        'description' => ''
    },
    'Port 28'                => {
        'speed'       => '10G',
        'state'       => 'enabled',
        'condition'   => 'down',
        'description' => ''
    },
    'Port 31'                => {
        'speed'       => '1Gbps',
        'state'       => 'enabled',
        'condition'   => 'up',
        'description' => ''
    },
    'Port 6'                 => {
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => '10Gbps',
        'description' => 'DELL-4-NIC-3'
    },
    'Port 12'                => {
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => '10Gbps',
        'description' => 'DELL-1-NIC-3'
    },
    'OOB_EXT.9'              => {
        'description' => 'OOB SEGMENT',
        'condition'   => 'up',
        'state'       => 'enabled',
        'speed'       => 'Uncpecified'
    },
    'Port 41'                => {
        'description' => '',
        'condition'   => 'up',
        'state'       => 'enabled',
        'speed'       => '1Gbps'
    },
    'TRAFFIC_EXT_MCAST.1806' => {
        'description' => 'TRAFFIC_EXT_MULTICAST',
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => 'Uncpecified'
    },
    'Port 15'                => {
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => '10Gbps',
        'description' => ''
    },
    'OAM_EDGE_INT.411'       => {
        'speed'       => 'Uncpecified',
        'state'       => 'enabled',
        'condition'   => 'up',
        'description' => 'OAM_EDGE_INT privately'
    },
    'TRAFFIC_EXT_EDGE.1804'  => {
        'description' => 'TRAFFIC-EDGE-EXT',
        'speed'       => 'Uncpecified',
        'condition'   => 'up',
        'state'       => 'enabled'
    },
    'BACKEND_EDGE_INT.421'   => {
        'description' => 'BACKEND FOR EDGE REALM',
        'speed'       => 'Uncpecified',
        'condition'   => 'up',
        'state'       => 'enabled'
    },
    'TRAFFIC_CORE.40'        => {
        'speed'       => 'Uncpecified',
        'condition'   => 'up',
        'state'       => 'enabled',
        'description' => 'TRAFFIC-CORE-INTERNAL'
    },
    'Port 40'                => {
        'condition'   => 'up',
        'state'       => 'enabled',
        'speed'       => '1Gbps',
        'description' => ''
    },
    'Port 10'                => {
        'condition'   => 'up',
        'state'       => 'enabled',
        'speed'       => '10Gbps',
        'description' => 'DELL-2-NIC-3'
    },
    'Port 60'                => {
        'description' => '',
        'condition'   => 'down',
        'state'       => 'enabled',
        'speed'       => '10G'
    },
    'Port 24'                => {
        'condition'   => 'down',
        'state'       => 'enabled',
        'speed'       => '10G',
        'description' => ''
    },
    'Port 5'                 => {
        'description' => 'DELL-4-NIC-2',
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => '10Gbps'
    },
    'Port 35'                => {
        'description' => '',
        'speed'       => '1Gbps',
        'condition'   => 'up',
        'state'       => 'enabled'
    },
    'Port 30'                => {
        'condition'   => 'down',
        'state'       => 'enabled',
        'speed'       => '10G',
        'description' => ''
    },
    'Port 63'                => {
        'condition'   => 'down',
        'state'       => 'enabled',
        'speed'       => '10G',
        'description' => ''
    },
    'Port 11'                => {
        'description' => 'DELL-1-NIC-2',
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => '10Gbps'
    },
    'ACCESS.30'              => {
        'speed'       => 'Uncpecified',
        'condition'   => 'up',
        'state'       => 'enabled',
        'description' => 'SIMULATED ACCESS'
    },
    'Port 39'                => {
        'description' => '',
        'condition'   => 'up',
        'state'       => 'enabled',
        'speed'       => '1Gbps'
    },
    'Port 57'                => {
        'description' => '',
        'speed'       => '40G',
        'state'       => 'enabled',
        'condition'   => 'down'
    },
    'TRAFFIC_DMZ.20'         => {
        'description' => 'TRAFFIC-DMZ-ORIGINS',
        'speed'       => 'Uncpecified',
        'condition'   => 'up',
        'state'       => 'enabled'
    },
    'Port 52'                => {
        'state'       => 'enabled',
        'condition'   => 'down',
        'speed'       => '10G',
        'description' => ''
    },
    'Port 7'                 => {
        'condition'   => 'up',
        'state'       => 'enabled',
        'speed'       => '10Gbps',
        'description' => 'DELL-3-NIC-2'
    },
    'Port 27'                => {
        'description' => '',
        'state'       => 'enabled',
        'condition'   => 'down',
        'speed'       => '10G'
    },
    'Port 43'                => {
        'description' => '',
        'speed'       => '1Gbps',
        'state'       => 'enabled',
        'condition'   => 'up'
    },
    'Port 51'                => {
        'condition'   => 'down',
        'state'       => 'enabled',
        'speed'       => '10G',
        'description' => ''
    },
    'Port 53'                => {
        'speed'       => '40G',
        'state'       => 'enabled',
        'condition'   => 'down',
        'description' => ''
    },
    'Port 37'                => {
        'speed'       => '1Gbps',
        'state'       => 'enabled',
        'condition'   => 'up',
        'description' => ''
    },
    'Port 50'                => {
        'condition'   => 'down',
        'state'       => 'enabled',
        'speed'       => '10G',
        'description' => ''
    },
    'TRAFFIC_EDGE.50'        => {
        'description' => 'TRAFFIC-EDGE-INTERNAL',
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => 'Uncpecified'
    },
    'Port 38'                => {
        'description' => '',
        'speed'       => '1Gbps',
        'condition'   => 'up',
        'state'       => 'enabled'
    },
    'Port 34'                => {
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => '1Gbps',
        'description' => ''
    },
    'Port 23'                => {
        'description' => '',
        'state'       => 'enabled',
        'condition'   => 'down',
        'speed'       => 'auto'
    },
    'OAM_EXT.10'             => {
        'condition'   => 'up',
        'state'       => 'enabled',
        'speed'       => 'Uncpecified',
        'description' => 'OAM COMMON FOR ALL REALMS'
    },
    'Port 62'                => {
        'description' => '',
        'condition'   => 'down',
        'state'       => 'enabled',
        'speed'       => '10G'
    },
    'Port 61'                => {
        'state'       => 'enabled',
        'condition'   => 'down',
        'speed'       => '40G',
        'description' => ''
    },
    'Port 3'                 => {
        'description' => 'DELL-5-NIC-2',
        'condition'   => 'up',
        'state'       => 'enabled',
        'speed'       => '10Gbps'
    },
    'Port 58'                => {
        'state'       => 'enabled',
        'condition'   => 'down',
        'speed'       => '10G',
        'description' => ''
    },
    'MULTICAST.60'           => {
        'speed'       => 'Uncpecified',
        'state'       => 'enabled',
        'condition'   => 'up',
        'description' => 'MULTICAST SEGMENT'
    },
    'Port 20'                => {
        'description' => '',
        'speed'       => '10G',
        'condition'   => 'down',
        'state'       => 'enabled'
    }
};
