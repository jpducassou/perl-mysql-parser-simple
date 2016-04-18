#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;
use MySQL::Parser::Simple;

my $parser = new MySQL::Parser::Simple;
my $input  = 'select from where';
my $result = $parser -> process(\$input);

print 'result: ' . Dumper($result);

1;

