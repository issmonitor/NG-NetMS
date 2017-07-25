#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
{
    'Mgmt.4095'           => {
        'speed'       => 'Uncpecified',
        'description' => '',
        'state'       => 'enabled',
        'condition'   => 'up'
    },
    'Port 1:2'            => {
        'speed'       => '1Gbps',
        'description' => '(SQL)',
        'state'       => 'enabled',
        'condition'   => 'up'
    },
    'pon1-10.2010'        => {
        'speed'       => 'Uncpecified',
        'description' => '',
        'state'       => 'enabled',
        'condition'   => 'up'
    },
    'super-pon-irel.2000' => {
        'condition'   => 'up',
        'state'       => 'enabled',
        'description' => '',
        'speed'       => 'Uncpecified'
    },
    'Port 1:23'           => {
        'condition'   => 'up',
        'state'       => 'enabled',
        'description' => '(ALTAIR_COMCAST)',
        'speed'       => '1Gbps'
    },
    'Port 2:24'           => {
        'condition'   => 'up',
        'state'       => 'enabled',
        'description' => '(COMCAST-ITV)',
        'speed'       => '1Gbps'
    },
    'PON-MANAGER.10'      => {
        'description' => '',
        'speed'       => 'Uncpecified',
        'condition'   => 'up',
        'state'       => 'enabled'
    },
    'HCNASWITCH.3101'     => {
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => 'Uncpecified',
        'description' => ''
    },
    'Port 1:9'            => {
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => '1Gbps',
        'description' => '(WEB)'
    },
    'Default.1'           => {
        'description' => '',
        'speed'       => 'Uncpecified',
        'condition'   => 'up',
        'state'       => 'enabled'
    },
    'Port 2:5'            => {
        'condition'   => 'up',
        'state'       => 'enabled',
        'description' => '(Sh77_SW)',
        'speed'       => '1Gbps'
    },
    'Port 2:7'            => {
        'description' => '(M98_SW)',
        'speed'       => '1Gbps',
        'condition'   => 'up',
        'state'       => 'enabled'
    },
    'Port 1:4'            => {
        'description' => '(CROCODILE-EM0)',
        'speed'       => '1Gbps',
        'condition'   => 'up',
        'state'       => 'enabled'
    },
    'DOCSIS.301'          => {
        'description' => '',
        'speed'       => 'Uncpecified',
        'condition'   => 'up',
        'state'       => 'enabled'
    },
    'DGSCLACCESS.3203'    => {
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => 'Uncpecified',
        'description' => ''
    },
    'pon1-1.2001'         => {
        'description' => '',
        'speed'       => 'Uncpecified',
        'condition'   => 'up',
        'state'       => 'enabled'
    },
    'Port 1:24'           => {
        'speed'       => '1Gbps',
        'description' => '(Switch_ZYX_MULTICAST)',
        'state'       => 'enabled',
        'condition'   => 'up'
    },
    'trinity.289'         => {
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => 'Uncpecified',
        'description' => ''
    },
    'Port 1:20'           => {
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => '1Gbps',
        'description' => '(Planet_M69A): Planet_Office_switch_M69A'
    },
    'Port 2:16'           => {
        'description' => '(VEGA_UPLink)',
        'speed'       => '1Gbps',
        'condition'   => 'up',
        'state'       => 'enabled'
    },
    'Port 1:15'           => {
        'condition'   => 'down',
        'state'       => 'enabled',
        'description' => '(TRUNK-SUB)',
        'speed'       => 'auto'
    },
    'pon1-12.2012'        => {
        'condition'   => 'up',
        'state'       => 'enabled',
        'description' => '',
        'speed'       => 'Uncpecified'
    },
    'Port 1:17'           => {
        'condition'   => 'up',
        'state'       => 'enabled',
        'description' => '(JUN41-UP3)',
        'speed'       => '1Gbps'
    },
    'HCNACORE.3100'       => {
        'description' => '',
        'speed'       => 'Uncpecified',
        'condition'   => 'up',
        'state'       => 'enabled'
    },
    'Port 2:19'           => {
        'speed'       => '1G',
        'description' => '(Volkov_Home)',
        'state'       => 'enabled',
        'condition'   => 'down'
    },
    'Port 2:13'           => {
        'condition'   => 'up',
        'state'       => 'enabled',
        'description' => '(M71)',
        'speed'       => '1Gbps'
    },
    'Port 1:5'            => {
        'state'       => 'enabled',
        'condition'   => 'down',
        'speed'       => 'auto',
        'description' => '(CAS-Reikost)'
    },
    'Port 1:19'           => {
        'description' => '(HITLINE)',
        'speed'       => '1Gbps',
        'condition'   => 'up',
        'state'       => 'enabled'
    },
    'Port 2:17'           => {
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => '1Gbps',
        'description' => '(Dlink_Irel_8)'
    },
    'Port 1:26'           => {
        'speed'       => '10G',
        'description' => '',
        'state'       => 'enabled',
        'condition'   => 'down'
    },
    'VEGA.400'            => {
        'speed'       => 'Uncpecified',
        'description' => '',
        'state'       => 'enabled',
        'condition'   => 'up'
    },
    'pon1-13.2013'        => {
        'description' => '',
        'speed'       => 'Uncpecified',
        'condition'   => 'up',
        'state'       => 'enabled'
    },
    'Port 2:4'            => {
        'condition'   => 'up',
        'state'       => 'enabled',
        'description' => '(OfficeTVCOM_NEW)',
        'speed'       => '1Gbps'
    },
    'Port 2:11'           => {
        'condition'   => 'up',
        'state'       => 'enabled',
        'description' => '(Met121_SW)',
        'speed'       => '1Gbps'
    },
    'ITV-CLACCESS.3204'   => {
        'condition'   => 'up',
        'state'       => 'enabled',
        'description' => '',
        'speed'       => 'Uncpecified'
    },
    'Pronet.103'          => {
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => 'Uncpecified',
        'description' => ''
    },
    'Port 2:25'           => {
        'speed'       => '10G',
        'description' => '',
        'state'       => 'enabled',
        'condition'   => 'down'
    },
    'Port 2:20'           => {
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => '1Gbps',
        'description' => '(Sh68_1_2)'
    },
    'Port 1:6'            => {
        'condition'   => 'up',
        'state'       => 'enabled',
        'description' => '(IREL-3)',
        'speed'       => '1Gbps'
    },
    'Port 1:1'            => {
        'speed'       => '1Gbps',
        'description' => '(CitrixSRV)',
        'state'       => 'enabled',
        'condition'   => 'up'
    },
    'Port 2:15'           => {
        'description' => '(M91)',
        'speed'       => '1Gbps',
        'condition'   => 'up',
        'state'       => 'enabled'
    },
    'OCHADDON.204'        => {
        'speed'       => 'Uncpecified',
        'description' => '',
        'state'       => 'enabled',
        'condition'   => 'up'
    },
    'CLACCESS.3202'       => {
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => 'Uncpecified',
        'description' => ''
    },
    'CORELAN.100'         => {
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => 'Uncpecified',
        'description' => ''
    },
    'Port 2:21'           => {
        'description' => '(Citrix_244)',
        'speed'       => '1Gbps',
        'condition'   => 'up',
        'state'       => 'enabled'
    },
    'Port 1:12'           => {
        'speed'       => '1Gbps',
        'description' => '(JUN41-UP2)',
        'state'       => 'enabled',
        'condition'   => 'up'
    },
    'Port 2:2'            => {
        'speed'       => '1Gbps',
        'description' => '(TVCOM_Dlink)',
        'state'       => 'enabled',
        'condition'   => 'up'
    },
    'Port 2:18'           => {
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => '1Gbps',
        'description' => '(SW_Varganova_1): SW_Varganova1'
    },
    'Port 1:14'           => {
        'description' => '(IREL-CMTS-5)',
        'speed'       => '100Mbps',
        'condition'   => 'up',
        'state'       => 'enabled'
    },
    'Port 1:22'           => {
        'description' => '(IPaddr-129): fxp0_from_109.72.122.33\'',
        'speed'       => '100Mbps',
        'condition'   => 'up',
        'state'       => 'enabled'
    },
    'Port 2:1'            => {
        'description' => '(M88_SW)',
        'speed'       => '1Gbps',
        'condition'   => 'up',
        'state'       => 'enabled'
    },
    'Port 2:12'           => {
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => '1Gbps',
        'description' => '(M102_SW)'
    },
    'TRINITY_859.859'     => {
        'description' => '',
        'speed'       => 'Uncpecified',
        'condition'   => 'up',
        'state'       => 'enabled'
    },
    'pon1-11.2011'        => {
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => 'Uncpecified',
        'description' => ''
    },
    'MAR-IX.2100'         => {
        'condition'   => 'up',
        'state'       => 'enabled',
        'description' => '',
        'speed'       => 'Uncpecified'
    },
    'Port 1:8'            => {
        'condition'   => 'up',
        'state'       => 'enabled',
        'description' => '(IREL-CMTS-4)',
        'speed'       => '1Gbps'
    },
    'Port 1:25'           => {
        'state'       => 'enabled',
        'condition'   => 'down',
        'speed'       => '10G',
        'description' => '(ITV-10G)'
    },
    'Port 2:10'           => {
        'condition'   => 'up',
        'state'       => 'enabled',
        'description' => '(Kazan25_SW)',
        'speed'       => '1Gbps'
    },
    'iptv-test.2968'      => {
        'description' => '',
        'speed'       => 'Uncpecified',
        'condition'   => 'up',
        'state'       => 'enabled'
    },
    'Port 2:3'            => {
        'description' => '(Irel_Dlink_22)',
        'speed'       => '1Gbps',
        'condition'   => 'up',
        'state'       => 'enabled'
    },
    'test-ftcom.2971'     => {
        'speed'       => 'Uncpecified',
        'description' => '',
        'state'       => 'enabled',
        'condition'   => 'up'
    },
    'Port 2:9'            => {
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => '1Gbps',
        'description' => '(Art88)'
    },
    'Port 2:26'           => {
        'speed'       => '10G',
        'description' => '',
        'state'       => 'enabled',
        'condition'   => 'down'
    },
    'TVRTPC.205'          => {
        'condition'   => 'up',
        'state'       => 'enabled',
        'description' => '',
        'speed'       => 'Uncpecified'
    },
    'Port 2:8'            => {
        'speed'       => '1Gbps',
        'description' => '(CONCAST-TVCOM)',
        'state'       => 'enabled',
        'condition'   => 'up'
    },
    'Port 1:7'            => {
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => '100Mbps',
        'description' => '(MAIL)'
    },
    'Port 1:10'           => {
        'condition'   => 'up',
        'state'       => 'enabled',
        'description' => '(TUNER_IPS)',
        'speed'       => '1Gbps'
    },
    'Port 1:3'            => {
        'speed'       => '1Gbps',
        'description' => '(JUN41-UP)',
        'state'       => 'enabled',
        'condition'   => 'up'
    },
    'Port 1:18'           => {
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => '1Gbps',
        'description' => '(JUN41-UP4)'
    },
    'Office.211'          => {
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => 'Uncpecified',
        'description' => ''
    },
    'KRASN.2959'          => {
        'speed'       => 'Uncpecified',
        'description' => '',
        'state'       => 'enabled',
        'condition'   => 'up'
    },
    'OCHADNET.201'        => {
        'condition'   => 'up',
        'state'       => 'enabled',
        'description' => '',
        'speed'       => 'Uncpecified'
    },
    'Port 2:6'            => {
        'speed'       => '1Gbps',
        'description' => '(Shev_62_SW)',
        'state'       => 'enabled',
        'condition'   => 'up'
    },
    'Port 2:23'           => {
        'speed'       => '1Gbps',
        'description' => '(Art156_SW)',
        'state'       => 'enabled',
        'condition'   => 'up'
    },
    'Port 1:21'           => {
        'condition'   => 'up',
        'state'       => 'enabled',
        'description' => '(MODULATORS-SWITCH): MODULATORS-SWITCH',
        'speed'       => '100Mbps'
    },
    'Port 2:22'           => {
        'speed'       => '100Mbps',
        'description' => '(CMTS_Irel-5)',
        'state'       => 'enabled',
        'condition'   => 'up'
    },
    'Port 1:11'           => {
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => '1Gbps',
        'description' => '(Dlink_Irel_21)'
    },
    'COMCAST.2969'        => {
        'description' => '',
        'speed'       => 'Uncpecified',
        'condition'   => 'up',
        'state'       => 'enabled'
    },
    'Port 1:16'           => {
        'speed'       => '1Gbps',
        'description' => '(OlegHomme)',
        'state'       => 'enabled',
        'condition'   => 'up'
    },
    'SWACCESS.3201'       => {
        'speed'       => 'Uncpecified',
        'description' => '',
        'state'       => 'enabled',
        'condition'   => 'up'
    },
    'Port 1:13'           => {
        'state'       => 'enabled',
        'condition'   => 'up',
        'speed'       => '100Mbps',
        'description' => '(IREL-CMTS-2)'
    },
    'OCHADINT.200'        => {
        'condition'   => 'up',
        'state'       => 'enabled',
        'description' => '',
        'speed'       => 'Uncpecified'
    },
    'Port 2:14'           => {
        'speed'       => '1Gbps',
        'description' => '(Artema56_SW)',
        'state'       => 'enabled',
        'condition'   => 'up'
    },
    'LINEAGE.102'         => {
        'description' => '',
        'speed'       => 'Uncpecified',
        'condition'   => 'up',
        'state'       => 'enabled'
    }
};
