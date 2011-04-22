#!/usr/bin/perl -w

# $Id: set_number.t 7465 2011-02-12 20:01:30Z jonasbn $

use strict;
use warnings;
use Test::More tests => 5;
use Test::Exception;
use English qw(-no_match_vars);

use Class::Business::DK::FI;

my $fi = Class::Business::DK::FI->new('026840149965328');

ok($fi->set_number('000006535361999'));

dies_ok { $fi->set_number(); } 'no argument to mutator';

like($EVAL_ERROR, qr/You must provide a FI number/, 'asserting error message');

dies_ok { $fi->set_number(1234567890); } 'invalid argument to mutator';

like($EVAL_ERROR, qr/Invalid FI number parameter/, 'asserting error message');
