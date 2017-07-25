#!/usr/bin/perl
use strict;
use warnings;
use Test::More;
use Test::MockModule;#for syntax only
use Test::Subroutines;
use Test::Spec ;

use NGNMS::App;

use Emsgd qw(diag);
#================= Plugin in question
use NGNMS::Plugins::Core::Extreme::PollHost;
my NGNMS::Plugins::Core::Extreme::PollHost $plugin;
my ($FixtureDir, %devices);
share  %devices;

#@returns NGNMS::App::PollHostPluginInterface
sub get_plugin_new {
    $plugin = undef;
    return NGNMS::Plugins::Core::Extreme::PollHost->new;
}

sub test_db_clean($) {
    my NGNMS::DB $db = shift;
    local $db->dbh->{PrintWarn};
    $db->dbh->do( 'truncate table routers cascade ' );
}

sub get_expect($$) {
    my $exp = shift;
    my $device = shift; #pass
#    diag($device);
    my $r = do $FixtureDir."/$device/expect/$exp.pl";
    return $r;
}

## -----------------------------------------------------------------------------------------------------


$FixtureDir = File::Basename::dirname(__FILE__).'/fixtures';

%devices = (
#    'X670G2-48x-4q'   => { sysObjectID_0 => ".1.3.6.1.4.1.1916.2.195" },
    'X450a-24t-STACK' => { sysObjectID_0 => ".1.3.6.1.4.1.1916.2.93" },
#    'X440-24t-10G'    => { sysObjectID_0 => ".1.3.6.1.4.1.1916.9.99.9" },
);

for my $device  (keys %devices) {
    describe "$device info::" => sub {
            it "should set software for stacked devices";
            it "should set shftware for stacked devices";
        };
}
runtests unless caller;

