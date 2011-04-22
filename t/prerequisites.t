# http://search.cpan.org/~bdfoy/Test-Prereq/lib/Build.pm

# $Id: prerequisites.t 7451 2011-02-10 19:40:38Z jonasbn $

use strict;
use warnings;
use Test::More;
eval "use Test::Prereq::Build";

my $msg;

if ($@) {
    $msg = 'Test::Prereq::Build required to test dependencies';
} elsif (not $ENV{TEST_AUTHOR}) {
    $msg = 'set TEST_AUTHOR to enable this test';
}

plan skip_all => $msg if $msg;

prereq_ok();
