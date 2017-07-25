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
sub vendor {'Juniper'};
#=========================================
#TODO get real SNMP OIDs
sub devices {
    return {
#        'ex2200-24p-4g'   => { sysObjectID_0 => ".1.3.6.1.4.1.2636.1.1.1.2.43" , sysObjectID_0_string => 'RFC1213-MIB::sysObjectID.0 = OID: JUNIPER-CHASSIS-DEFINES-MIB::jnxProductName.43' },
        #ToDo implement tests for ex3200-24t
#        'ex3200-24t'   => { sysObjectID_0 => ".1.3.6.1.4.1.2636.1.1.1.2.30" , sysObjectID_0_string => 'RFC1213-MIB::sysObjectID.0 = OID: JUNIPER-CHASSIS-DEFINES-MIB::jnxProductNameEX3200' },
        #todo get  ex3300-48t OIDs
        'ex3300-48t'    => { sysObjectID_0 => ".1.3.6.1.4.1.2636.x.x.x.x" , sysObjectID_0_string => 'RFC1213-MIB::sysObjectID.0 = OID: CISCO-PRODUCTS-MIB::ciscoC2500' },
        'j4300' => { sysObjectID_0 => ".1.3.6.1.4.1.2636.1.1.1.2.14", sysObjectID_0_string => 'RFC1213-MIB::sysObjectID.0 = OID: JUNIPER-CHASSIS-DEFINES-MIB::jnxProductNameJ4300'  },
        #JUPITER with ISIS iso intrfaces
        'j6350' => { sysObjectID_0 => ".1.3.6.1.4.1.2636.1.1.1.2.20", sysObjectID_0_string => 'RFC1213-MIB::sysObjectID.0 = JUNIPER-CHASSIS-DEFINES-MIB::jnxProductNameJ6350'  },
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

