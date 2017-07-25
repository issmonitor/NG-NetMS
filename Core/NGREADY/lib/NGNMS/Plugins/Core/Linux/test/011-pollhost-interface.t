#!/usr/bin/perl
use strict;
use warnings;
use Test::More;
use Test::MockModule;#for syntax only
use Test::Subroutines;
use Test::Spec ;

use NGNMS::App;
use NGNMS::Plugins::Core::Linux::PollHost;
use Emsgd qw(diag);
#=============================================
sub fixtures {File::Basename::dirname(__FILE__).'/fixtures'}
my $Fixtures_dir = fixtures.'/interface_parser/linux/ip_address';
sub test_db_clean($) {
    my NGNMS::DB $db = shift;
    local $db->dbh->{PrintWarn};
    $db->dbh->do( 'truncate table routers cascade ' );
}


#====================================== Helper functions ======================
describe 'get_interfa_state::' => sub {
        my NGNMS::Net::Emulator::Session $session;
        my NGNMS::Plugins::Core::Linux::PollHost $plugin;
        before each => sub {
                $session = NGNMS::Net::Emulator::Session->new;
                $plugin = NGNMS::Plugins::Core::Linux::PollHost->new;
                $plugin->session( $session );
            };
        it 'should get state from ip addr show ' => sub {
                my $d;
                $d = $plugin->get_interfa_state( "<LOOPBACK,UP,LOWER_UP>" );
                is  $d, 'up';
                $d = $plugin->get_interfa_state( "<BROADCAST,MULTICAST,UP,LOWER_UP>" );
                is  $d, 'up';
                $d = $plugin->get_interfa_state( "<BROADCAST,MULTICAST,DOWN,LOWER_UP>" );
                is  $d, 'down';
                $d = $plugin->get_interfa_state( "<BROADCAST,MULTICAST,LOWER_UP>" );
                is  $d, 'unknown';
                $d = $plugin->get_interfa_state( "<BROADCAST,MULTICAST,LOWER_UP>" );
                is  $d, 'unknown';
                $d = $plugin->get_interfa_state( "<NO-CARRIER,BROADCAST,MULTICAST,UP>" );
                is  $d, 'up';
                $d = $plugin->get_interfa_state( "<BROADCAST,MULTICAST>" );
                is  $d, 'unknown';

            };
    };

describe 'split_inteface_name::' => sub {
        my NGNMS::Net::Emulator::Session $session;
        my NGNMS::Plugins::Core::Linux::PollHost $plugin;
        before each => sub {
                $session = NGNMS::Net::Emulator::Session->new;
                $plugin = NGNMS::Plugins::Core::Linux::PollHost->new;
                $plugin->session( $session );
            };

        it 'split ifname intop logical and physical if "@" in name' => sub {

                my $d = $plugin->split_inteface_name( 'test_vlan_41@eth1' );
                is_deeply $d, { 'logical_name' => 'test_vlan_41', 'physical_name' => 'eth1' };
            };
        it 'split return same for logical and physical if "@" not present' => sub {
                my $d = $plugin->split_inteface_name( 'test_vlan_41' );
                is_deeply $d, { 'logical_name' => 'test_vlan_41', 'physical_name' => 'test_vlan_41' };
            }
    };

#======================= remote HOst Macro
describe 'linux_parse_speed_interface::' =>sub{
        my NGNMS::Net::Emulator::Session $session;
        my NGNMS::Plugins::Core::Linux::PollHost $plugin;
        my $ret = '
Settings for eth1:
        Supported ports: [ TP ]
        Supported link modes:   1000baseT/Full
                                10000baseT/Full
        Supported pause frame use: No
        Supports auto-negotiation: No
        Advertised link modes:  Not reported
        Advertised pause frame use: No
        Advertised auto-negotiation: No
        Speed: 10000Mb/s
        Duplex: Full
        Port: Twisted Pair
        PHYAD: 0
        Transceiver: internal
        Auto-negotiation: off
        MDI-X: Unknown
        ';
        before each => sub {
                $session = NGNMS::Net::Emulator::Session->new;
                $plugin = NGNMS::Plugins::Core::Linux::PollHost->new;
                $plugin->session( $session );
            };
        it 'should return data ftom ethtool'=>sub{
                $session->reply( {
                        'getInterfaceSpeed' => $ret
                    } );
                my $d = $plugin->linux_parse_speed_interface('eth1');
                is $d,'10000Mb/s';
            }
    };
#====================================== REAL INTERFACES ======================

describe "RH virbr interfaces" => sub {
        my NGNMS::Net::Emulator::Session $session;
        my NGNMS::Plugins::Core::Linux::PollHost $plugin;
        before each => sub {
                $session = NGNMS::Net::Emulator::Session->new;

                $plugin = NGNMS::Plugins::Core::Linux::PollHost->new;
                $plugin->session( $session );
                $plugin->stubs( {
                        'linux_parse_speed_interface' => '10000Mb/s'
                    } );
            };
        it "should find state UP in the end of line" => sub {
                my $ifs = '
5: virbr0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue state DOWN
    link/ether 52:54:00:cf:e8:6f brd ff:ff:ff:ff:ff:ff
    inet 192.168.122.1/24 brd 192.168.122.255 scope global virbr0
       valid_lft forever preferred_lft forever
6: virbr0-nic: <BROADCAST,MULTICAST> mtu 9001 qdisc pfifo_fast master virbr0 state DOWN qlen 500
    link/ether 52:54:00:cf:e8:6f brd ff:ff:ff:ff:ff:ff
                ';
                my $expect_ph_int = {
                    'virbr0'     => {
                        'description' => '52:54:00:cf:e8:6f',
                        'state'       => 'up',
                        'condition'   => 'disabled',
                        'speed'=>'10000Mb/s',
                        'mtu'=>'1500',
                    },
                    'virbr0-nic' => {
                        'condition'   => 'disabled',
                        'state'       => 'unknown',
                        'description' => '52:54:00:cf:e8:6f',
                        'speed'=>'10000Mb/s',
                        'mtu'=>'9001',
                    }
                };
                my ($ph_if, $ifc ) = $plugin->parse_interfaces( $ifs );
                #                diag ( $ph_if );
                is_deeply( $ph_if, $expect_ph_int )
            };

    };


describe 'linux_processing cmd "ip address"::' => sub {
        my NGNMS::Net::Emulator::Session $session;
        my NGNMS::Plugins::Core::Linux::PollHost $plugin;
        before each => sub {
                $session = NGNMS::Net::Emulator::Session->new;
                $plugin = NGNMS::Plugins::Core::Linux::PollHost->new;
                $plugin->stubs( {
                        'linux_parse_speed_interface' => '10000Mb/s'
                    } );
                $plugin->session( $session );
            };
        ########### CENTOS #########################
        #    $ uname -a
        #    Linux web1.offpista.com 2.6.32-504.30.3.el6.i686 #1 SMP Wed Jul 15 10:55:56 UTC 2015 i686 i686 i386 GNU/Linux
        #    $ cat /etc/redhat-release
        #    CentOS release 6.7 (Final)
        it "Ubuntu 14.04.4 LTS::00" => sub {
                my $expect_ph_int = {
                    'eth0' => {
                        'speed'=>'10000Mb/s',
                        'state'       => 'up',
                        'description' => '00:50:56:2c:56:e2',
                        'condition'   => 'enabled',
                        'mtu'=>'1500',
                    },
                    'lo'   => {
                        'speed'=>'10000Mb/s',
                        'state'       => 'up',
                        'description' => '00:00:00:00:00:00',
                        'condition'   => 'UNKNOWN',
                        'mtu'=>'65536',
                    },
                    'eth1' => {
                        'speed'=>'10000Mb/s',
                        'state'       => 'up',
                        'description' => '00:50:56:20:d8:b9',
                        'condition'   => 'enabled',
                        'mtu'=>'1500',
                    }
                };
                my $expect_log_int = {
                    'lo'             => {
                        'physical_interface_name' => 'lo',
                        'ip'                      => '127.0.0.1',
                        'description'             => 'UNKNOWN',
                        'mask'                    => '255.0.0.0'
                    },
                    'test_vlan_41:1' => {
                        'physical_interface_name' => 'eth1',
                        'ip'                      => '192.168.2.21',
                        'description'             => 'enabled',
                        'mask'                    => '255.255.255.0'
                    },
                    'test_vlan_41:0' => {
                        'mask'                    => '255.255.255.0',
                        'description'             => 'enabled',
                        'physical_interface_name' => 'eth1',
                        'ip'                      => '192.168.1.21'
                    },
                    'eth1'           => {
                        'ip'                      => '10.10.100.21',
                        'physical_interface_name' => 'eth1',
                        'description'             => 'enabled',
                        'mask'                    => '255.255.255.0'
                    },
                    'eth0'           => {
                        'physical_interface_name' => 'eth0',
                        'ip'                      => '129.192.44.21',
                        'mask'                    => '255.255.255.192',
                        'description'             => 'enabled'
                    }
                };                                                                                                                                   ;
                my $text = File::Slurp::read_file $Fixtures_dir.'/Ubuntu-14-LTS-00.txt', chomp => 1;
                my ($ph_if, $ifc ) = $plugin->parse_interfaces( $text );
                #                diag $ifc;
                is_deeply $ph_if, $expect_ph_int;
                is_deeply $ifc, $expect_log_int;
            };
        it "Ubuntu 14.04.4 LTS::01" => sub {
                my $expect_ph_int = {
                    'eth1' => {
                        'speed'=>'10000Mb/s',
                        'state'       => 'up',
                        'description' => '00:0c:29:7d:ac:50',
                        'condition'   => 'enabled',
                        'mtu'=>'1500',
                    },
                    'eth0' => {
                        'speed'=>'10000Mb/s',
                        'condition'   => 'enabled',
                        'description' => '00:0c:29:7d:ac:46',
                        'state'       => 'up',
                        'mtu'=>'1500',
                    },
                    'lo'   => {
                        'speed'=>'10000Mb/s',
                        'state'       => 'up',
                        'condition'   => 'UNKNOWN',
                        'description' => '00:00:00:00:00:00',
                        'mtu'=>'65536',
                    }
                };                                                   ;
                my $expect_log_int = {
                    'lo'        => {
                        'description'             => 'UNKNOWN',
                        'ip'                      => '127.0.0.1',
                        'physical_interface_name' => 'lo',
                        'mask'                    => '255.0.0.0'
                    },
                    'eth1.20:0' => {
                        'description'             => 'enabled',
                        'ip'                      => '172.17.20.11',
                        'mask'                    => '255.255.255.0',
                        'physical_interface_name' => 'eth1'
                    },
                    'eth0'      => {
                        'description'             => 'enabled',
                        'ip'                      => '192.168.3.117',
                        'mask'                    => '255.255.255.0',
                        'physical_interface_name' => 'eth0'
                    },
                    'eth1.10'   => {
                        'physical_interface_name' => 'eth1',
                        'mask'                    => '255.255.255.0',
                        'ip'                      => '172.17.133.11',
                        'description'             => 'enabled'
                    },
                    'eth1.20:1' => {
                        'physical_interface_name' => 'eth1',
                        'mask'                    => '255.255.255.0',
                        'ip'                      => '172.17.20.12',
                        'description'             => 'enabled'
                    }
                };                                                                                                                                                                                    ;
                my $text = File::Slurp::read_file $Fixtures_dir.'/Ubuntu-14-LTS-01.txt', chomp => 1;
                my ($ph_if, $ifc ) = $plugin->parse_interfaces( $text );
                #                diag $ifc;
                #diag $ph_if;

                is_deeply $ph_if, $expect_ph_int;
                is_deeply $ifc, $expect_log_int;
            };
        it "Red Hat Enterprise Linux Server 7.2 (Maipo)" => sub {
                my $expect_ph_int = {
                    'virbr0-nic' => {
                        'speed'=>'10000Mb/s',
                        'condition'   => 'disabled',
                        'state'       => 'unknown',
                        'description' => '52:54:00:cf:e8:6f',
                        'mtu'=>'1500',
                    },
                    'lo'         => {
                        'speed'=>'10000Mb/s',
                        'description' => '00:00:00:00:00:00',
                        'condition'   => 'UNKNOWN',
                        'state'       => 'up',
                        'mtu'=>'65536',
                    },
                    'virbr0'     => {
                        'speed'=>'10000Mb/s',
                        'condition'   => 'disabled',
                        'state'       => 'up',
                        'description' => '52:54:00:cf:e8:6f',
                        'mtu'=>'1500',
                    },
                    'ens192'     => {
                        'speed'=>'10000Mb/s',
                        'description' => '00:0c:29:32:76:f8',
                        'state'       => 'up',
                        'condition'   => 'enabled',
                        'mtu'=>'1500',
                    },
                    'ens224'     => {
                        'speed'=>'10000Mb/s',
                        'description' => '00:0c:29:32:76:02',
                        'state'       => 'up',
                        'condition'   => 'enabled',
                        'mtu'=>'1500',
                    }
                };                                                                                                  ;
                my $expect_log_int = {
                    'virbr0'    => {
                        'mask'                    => '255.255.255.0',
                        'description'             => 'disabled',
                        'physical_interface_name' => 'virbr0',
                        'ip'                      => '192.168.122.1'
                    },
                    'ens192'    => {
                        'description'             => 'enabled',
                        'mask'                    => '255.255.255.0',
                        'ip'                      => '192.168.3.121',
                        'physical_interface_name' => 'ens192'
                    },
                    'ens224.10' => {
                        'description'             => 'enabled',
                        'mask'                    => '255.255.255.0',
                        'ip'                      => '172.17.133.129',
                        'physical_interface_name' => 'ens224'
                    },
                    'lo'        => {
                        'physical_interface_name' => 'lo',
                        'ip'                      => '127.0.0.1',
                        'mask'                    => '255.0.0.0',
                        'description'             => 'UNKNOWN'
                    }
                };
                my $text = File::Slurp::read_file $Fixtures_dir.'/RH-72-00.txt', chomp => 1;
                my ($ph_if, $ifc ) = $plugin->parse_interfaces( $text );
                #diag $ifc;
                #diag $ph_if;
                is_deeply $ph_if, $expect_ph_int;
                is_deeply $ifc, $expect_log_int;
            }
    };

describe "Linux::ParserInterface->" => sub {
        my NGNMS::App $app;
        my NGNMS::DB $db;
        my $rt_id;
        before each => sub {
                NGNMS::App->_clear_instance;
                $app = NGNMS::App->instance( mode => 'poll', dbname => 'ngnms_test', dbhost => 'ngnms-psql',
                    host                          => '10.0.1.1' );
                $app->stubs(
                    getHostCredentials => sub { { community => 'public' } },
                    processPollHost     => 1,
                );
                $db = $app->get_db;
                $app->SessionClass( 'NGNMS::Net::Emulator::Session' );
                test_db_clean($db);
                $rt_id = $db->addRouter( '10.0.1.1', '10.0.1.1', 1 );
            };
        it "should parse physical";
        it "should parse logical";

    };


runtests unless caller;


