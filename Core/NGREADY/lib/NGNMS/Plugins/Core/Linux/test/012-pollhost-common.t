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


sub test_db_clean($) {
    my NGNMS::DB $db = shift;
    local $db->dbh->{PrintWarn};
    $db->dbh->do( 'truncate table routers cascade ' );
}
=header1 Linux Plugin selection
Fol linux SMNP is
 snmpget -v 2c -c public -On  127.0.0.1 1.3.6.1.2.1.1.2.0
.1.3.6.1.2.1.1.2.0 = OID: .1.3.6.1.4.1.8072.3.2.10


=cut

describe "Plugin selection and session : Linux::ParserInterface->" => sub {
        my NGNMS::Plugins::Core::Linux::PollHost $plugin;
        before each => sub {
                $plugin = NGNMS::Plugins::Core::Linux::PollHost->new;
            };
        it "checkDeviceSupported :: should accept 'Linux' UpperCase as command line host type" => sub {
                ok $plugin->checkDeviceSupported( 'Linux' );
            };
        it "checkDeviceSupported :: should accept 'linux' LowerCase as command line host type" => sub {
                ok $plugin->checkDeviceSupported( 'linux' );
                ;
            };
        it "checkSNMPsysObjectID :: should accept Linux vie SMNP" => sub {
                ok $plugin->checkSNMPsysObjectID( '.1.3.6.1.4.1.8072.3.2.10' );
            };
#        it "getPersonality" => sub {
#                is $plugin->getPersonality, 'bash';
#            };
#        it "getPhraseBook" => sub {
#                like $plugin->getPhraseBook, qr(NGNMS/Plugins/Core/Linux/phrasebook);
#            };
#        it "getRequiresPrivileged" => sub {
#                isnt $plugin->getRequiresPrivileged, 1;
#            };
    };
describe "Command-line output parser  : Linux::ParserInterface->" => sub {
        my NGNMS::Net::Emulator::Session $session;
        my NGNMS::Plugins::Core::Linux::PollHost $plugin;
        before each => sub {
                $session = NGNMS::Net::Emulator::Session->new;
                $plugin = NGNMS::Plugins::Core::Linux::PollHost->new;
            };
        it "getIpLayer" => sub {
                is $plugin->getIpLayer, 5;
            };
        it "getVendor" => sub {
                is $plugin->getVendor, 'Linux';
            };
        it "getLocation" => sub {
                is $plugin->getLocation, '';
            };

    };
describe "getModel via exec of \"getVendor\" macro form Phrasebook ::" => sub {
        my NGNMS::Net::Emulator::Session $session;
        my NGNMS::Plugins::Core::Linux::PollHost $plugin;
        before each => sub {
                $session = NGNMS::Net::Emulator::Session->new;
                $plugin = NGNMS::Plugins::Core::Linux::PollHost->new;
                $plugin->session( $session );
            };
        ##############################################################################################
        it 'Centos:: CentOS Linux release 7.2.1511 (Core)' => sub {
                my $ret = '
CentOS Linux release 7.2.1511 (Core)
Derived from Red Hat Enterprise Linux 7.2 (Source)
NAME="CentOS Linux"
VERSION="7 (Core)"
ID="centos"
ID_LIKE="rhel fedora"
VERSION_ID="7"
PRETTY_NAME="CentOS Linux 7 (Core)"
ANSI_COLOR="0;31"
CPE_NAME="cpe:/o:centos:centos:7"
HOME_URL="https://www.centos.org/"
BUG_REPORT_URL="https://bugs.centos.org/"

CENTOS_MANTISBT_PROJECT="CentOS-7"
CENTOS_MANTISBT_PROJECT_VERSION="7"
REDHAT_SUPPORT_PRODUCT="centos"
REDHAT_SUPPORT_PRODUCT_VERSION="7"

CentOS Linux release 7.2.1511 (Core)
CentOS Linux release 7.2.1511 (Core)
cpe:/o:centos:centos:7
cat: /etc/*_ver*: No such file or directory
';
                $session->reply( {
                        'getModel' => $ret
                    } );
                my $r = $plugin->getModel;
                is $r, 'CentOS Linux release 7.2.1511 (Core)';
            };
        ##############################################################################################
        it 'Centos:: CentOS release 6.8 (Final)' => sub {
                my $ret = '
CentOS release 6.8 (Final)
LSB_VERSION=base-4.0-ia32:base-4.0-noarch:core-4.0-ia32:core-4.0-noarch:printing-4.0-ia32:printing-4.0-noarch
cat: /etc/lsb-release.d: Is a directory
CentOS release 6.8 (Final)
CentOS release 6.8 (Final)
cpe:/o:centos:linux:6:GA
cat: /etc/*_ver*: No such file or directory';
                $session->reply( {
                        'getModel' => $ret
                    } );
                my $r = $plugin->getModel;
                is $r, 'CentOS release 6.8 (Final)';
            };
        ##############################################################################################
        it 'RedHat:: release 6.7 ' => sub {
                my $ret = '
cat: /etc/*_ver*: No such file or directory
Red Hat Enterprise Linux Server release 6.7 (Santiago)
Red Hat Enterprise Linux Server release 6.7 (Santiago)';
                $session->reply( {
                        'getModel' => $ret
                    } );
                my $r = $plugin->getModel;
                is $r, substr('Red Hat Enterprise Linux Server release 6.7 (Santiago)', 0, 49);
            };
        ##############################################################################################
        it 'RedHat:: release 6.7 ' => sub {
                my $ret = '
cat: /etc/*_ver*: No such file or directory
Red Hat Enterprise Linux Server release 6.7 (Santiago)
Red Hat Enterprise Linux Server release 6.7 (Santiago)';
                $session->reply( {
                        'getModel' => $ret
                    } );
                my $r = $plugin->getModel;
                is $r, substr('Red Hat Enterprise Linux Server release 6.7 (Santiago)', 0, 49);
            };
        ##############################################################################################
        it 'Ubuntu:: Ubuntu 14.04.4 LTS ' => sub {
                my $ret = '
DISTRIB_ID=Ubuntu
DISTRIB_RELEASE=14.04
DISTRIB_CODENAME=trusty
DISTRIB_DESCRIPTION="Ubuntu 14.04.4 LTS"
NAME="Ubuntu"
VERSION="14.04.4 LTS, Trusty Tahr"
ID=ubuntu
ID_LIKE=debian
PRETTY_NAME="Ubuntu 14.04.4 LTS"
VERSION_ID="14.04"
HOME_URL="http://www.ubuntu.com/"
SUPPORT_URL="http://help.ubuntu.com/"
BUG_REPORT_URL="http://bugs.launchpad.net/ubuntu/"
jessie/sid';
                $session->reply( {
                        'getModel' => $ret
                    } );
                my $r = $plugin->getModel;
                is $r, substr('Ubuntu 14.04.4 LTS', 0, 49);
            };
    };
describe "getHardware via exec of \"getHardware\" macro form Phrasebook ::" => sub {
        my NGNMS::Net::Emulator::Session $session;
        my NGNMS::Plugins::Core::Linux::PollHost $plugin;
        before each => sub {
                $session = NGNMS::Net::Emulator::Session->new;
                $plugin = NGNMS::Plugins::Core::Linux::PollHost->new;
                $plugin->session( $session );
            };
        ##############################################################################################
        it 'should return CPUs number and architeche' => sub {
                my $ret_hardware = q(
Architecture:          x86_64
CPU op-mode(s):        32-bit, 64-bit
Byte Order:            Little Endian
CPU(s):                4
On-line CPU(s) list:   0-3
Thread(s) per core:    1
Core(s) per socket:    4
Socket(s):             1
NUMA node(s):          1
Vendor ID:             GenuineIntel
CPU family:            6
Model:                 42
Stepping:              7
CPU MHz:               3100.021
BogoMIPS:              6200.04
Virtualization:        VT-x
Hypervisor vendor:     VMware
Virtualization type:   full
L1d cache:             32K
L1i cache:             32K
L2 cache:              256K
L3 cache:              8192K
NUMA node0 CPU(s):     0-3
);
                my $ret_mem ='
MemTotal:        4047716 kB
MemFree:          492244 kB
MemAvailable:    1855048 kB
Buffers:          277500 kB
Cached:          1324936 kB
SwapCached:        64296 kB
Active:          2211180 kB
Inactive:        1000368 kB
Active(anon):    1169932 kB
Inactive(anon):   598728 kB
';
                my $expect = [
                    {
                        'hw_amount' => '4',
                        'hw_item'   => 'processor',
                        'hw_ver'    => 'x86_64',
                        'hw_name'   => 'GenuineIntel'
                    },
                    {
                        'hw_ver'    => 'Stepping 7',
                        'hw_amount' => '3100.021',
                        'hw_name'   => 'CPU MHz',
                        'hw_item'   => 'processor'
                    },
                    {
                        'hw_amount' => 'full',
                        'hw_item'   => 'Hypervisor',
                        'hw_name'   => 'vendor',
                        'hw_ver'    => 'VMware'
                    },
                    {
                        'hw_amount' => '4047716 kB',
                        'hw_item'   => 'Memory',
                        'hw_name'   => 'MemTotal',
                        'hw_ver'    => 'NA'
                    },
                ];
                $session->reply( {
                        'getHardware' => $ret_hardware,
                        'getMemory' =>$ret_mem,
                    } );
                my $r = $plugin->getHardware;
#                diag $r;
                is_deeply $r, $expect;
            };

    };
describe "getSoftware via exec of \"getSoftware\" macro form Phrasebook ::" => sub {
        my NGNMS::Net::Emulator::Session $session;
        my NGNMS::Plugins::Core::Linux::PollHost $plugin;
        my $expect=[
            {
                sw_item	=> 'Operating system',
                sw_name=>  'Kernel',
                sw_ver => '4.4.14-moby',
        }
        ];
        before each => sub {
                $session = NGNMS::Net::Emulator::Session->new;
                $plugin = NGNMS::Plugins::Core::Linux::PollHost->new;
                $plugin->session( $session );
            };
        ##############################################################################################
        it 'should return first line of output' => sub {
                my $ret = " 4.4.14-moby \n x86_64-1 \n";
                $session->reply( {
                        'getSoftware' => $ret
                    } );
                my $r = $plugin->getSoftware;
#                diag $r;
                is_deeply $r, $expect;
            };

    };
describe "getHostName via exec of \"getHostName\" macro form Phrasebook ::" => sub {
        my NGNMS::Net::Emulator::Session $session;
        my NGNMS::Plugins::Core::Linux::PollHost $plugin;
        before each => sub {
                $session = NGNMS::Net::Emulator::Session->new;
                $plugin = NGNMS::Plugins::Core::Linux::PollHost->new;
                $plugin->session( $session );
            };
        ##############################################################################################
        it 'should return first line of output' => sub {
               $session->reply( {
                        'getHostName' => "NewHostNmae\nbfb\nns"
                    } );
                my $r = $plugin->getHostName;
                #                diag $r;
                is_deeply $r, 'NewHostNmae';
            };

    };
runtests unless caller;;

