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
sub vendor {'Linux'};
#=========================================
#TODO get real SNMP OIDs
sub devices {
    return {
        'ubuntu-14-04-05-lts-vlans'   => { sysObjectID_0 => ".1.3.6.1.4.1.8072.3.2.10" , sysObjectID_0_string => 'RFC1213-MIB::sysObjectID.0 = OID: NET-SNMP-MIB::netSnmpAgentOIDs.10' },
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



runtests unless caller;

