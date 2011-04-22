#!/usr/bin/perl -w

# $Id: get_number.t 7465 2011-02-12 20:01:30Z jonasbn $

use strict;
use warnings;
use Test::More tests => 1;

use Class::Business::DK::FI;

my $fi = Class::Business::DK::FI->new('026840149965328');

is($fi->get_number(), '026840149965328');
