#!/usr/bin/env perl

# ============================================================================
use strict;
use warnings;

# ============================================================================
use Parse::Yapp;

# ============================================================================
my $filename = 'lib/MySQL/Parser/Simple.yp';
my $outfile  = 'lib/MySQL/Parser/Simple.pm';
my $package  = 'MySQL::Parser::Simple';

my $parser = new Parse::Yapp(inputfile => $filename);

my $warnings = $parser -> Warnings();
$warnings and print STDERR $warnings;

open(my $output, '>', $outfile) or die "Cannot open $outfile for writing.\n";

print $output $parser -> Output(
	'classname'    => $package,
	'template'     => undef,
	'standalone'   => 0,
	'linenumbers'  => 0,
);

close ($output);

# ============================================================================

