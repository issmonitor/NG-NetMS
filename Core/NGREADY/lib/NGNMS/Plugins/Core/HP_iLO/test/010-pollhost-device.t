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
sub vendor {'HP-iLO'};
#=========================================
#TODO get real SNMP OIDs
sub devices {
    return {
        'DL380-G5-iLO1.7'   => { sysObjectID_0 => ".100.100.999.999", sysObjectID_0_string => 'RFC1213-MIB::sysObjectID.0 = OID: UnReal-HP-ILO::HP-ILO' },
    };
}
#=============================================
sub fixtures {File::Basename::dirname(__FILE__).'/fixtures'}
sub module {
    my $v = vendor();
    $v =~ s/-/_/;
    "NGNMS::Plugins::Core::".$v."::PollHost"
};
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

