#!/usr/bin/perl
use strict;
use warnings;
use Test::More;
use Test::MockModule;#for syntax only
use Test::Subroutines;
use Test::Spec ;
use Module::Load;
use NGNMS::App;

use Emsgd qw(diag);

#================= Plugin in question
sub vendor {'Cisco'};
#TODO get real SNMP OIDs
sub devices {
    return {
        'C2500'     => { sysObjectID_0 => ".1.3.6.1.4.1.9.3.2.10.x.x.x.x", sysObjectID_0_string => 'RFC1213-MIB::sysObjectID.0 = OID: CISCO-PRODUCTS-MIB::ciscoC2500' },
        'MC3810'    => { sysObjectID_0 => ".1.3.6.1.4.1.9.3.2.10.x.x.x.x", sysObjectID_0_string => 'RFC1213-MIB::sysObjectID.0 = OID: CISCO-PRODUCTS-MIB::ciscoMC3810' },
        's72033_rp' => { sysObjectID_0 => "..1.3.6.1.4.1.9.3.2.10.x.x.x.x", sysObjectID_0_string => 'RFC1213-MIB::sysObjectID.0 = OID: CISCO-PRODUCTS-MIB::ciscoS72033' },

    };
}
#=============================================

sub fixtures {File::Basename::dirname(__FILE__).'/fixtures'}
sub module {"NGNMS::Plugins::Core::".vendor()."::PollHost"};
load  module();

spec_helper "../../test_helper/plugin_test_helper.pl";



## -----------------------------------  DEVICE REQUIRED  ------------------------------------------------------
describe vendor.":: implements" => sub {
        it_should_behave_like "implement required methods";
        it_should_behave_like "implement device support";
        it_should_behave_like "implements device info";
    };
## -----------------------------------  DEVICE SPECIFIC ------------------------------------------------------

describe "Cisco specified getModel via SNMP::" => sub {
        my NGNMS::Net::Emulator::Session $session;
        my ($plugin);
        before each => sub {
                $session = NGNMS::Net::Emulator::Session->new;
                $plugin = get_plugin_new();
                $plugin->session( $session );
            };
        it "implements getModel for Cisco " => sub {
                my $snmp_session = NGNMS::Net::SNMPSession->new();
                $snmp_session->connect( 'public', '10.0.1.1', 'hostname' );
                $snmp_session->stubs(
                    '_run' => 'RFC1213-MIB::sysObjectID.0 = OID: CISCO-PRODUCTS-MIB::ciscoMC3810'
                );
                $plugin->snmp_session( $snmp_session );
                is $plugin->getModel, 'ciscoMC3810';
            };

    };

runtests unless caller;

