#!/usr/bin/env perl

# ============================================================================
use 5.010001;

# ============================================================================
use strict;
use warnings;

# ============================================================================
use ExtUtils::MakeMaker;

# ============================================================================
WriteMakefile(
	'NAME'               => 'MySQL::Parser::Simple',
	'VERSION_FROM'       => 'lib/MySQL/Parser/Simple.yp',
	'ABSTRACT_FROM'      => 'lib/MySQL/Parser/Simple.yp',
	'AUTHOR'             => 'Jean Pierre Ducassou <jpducassou@gmail.com>',
	'LICENSE'            => 'perl_5',
	'MIN_PERL_VERSION'   => 'v5.10.1',
	'CONFIGURE_REQUIRES' => { 'ExtUtils::MakeMaker' => 0 },
	'BUILD_REQUIRES'     => { 'Parse::Yapp' => 0, 'Test::More' => 0 },
	'PREREQ_PM'          => { 'Parse::Yapp' => 0 },
	'PL_FILES'           => { 'lib/MySQL/Parser/Simple.pm.pl' => 'lib/MySQL/Parser/Simple.pm' },
	'PM'                 => { 'lib/MySQL/Parser/Simple.pm'    => '$(INST_LIBDIR)/Simple.pm' },
	'EXE_FILES'          => [ 'bin/mps.pl' ],
	'META_MERGE'         => {
		'meta-spec' => { version => 2 },
		'resources' => {
			'repository' => {
				'type'  => 'git',
				'url'   => 'https://github.com/jpducassou/perl-mysql-parser-simple.git',
				'web'   => 'https://github.com/jpducassou/perl-mysql-parser-simple',
			},
		},
	},
	'dist'               => { 'COMPRESS' => 'gzip -9f', 'SUFFIX' => 'gz' },
	'clean'              => { 'FILES'    => ['MySQL-Parser-Simple-*.tar.gz', 'lib/MySQL/Parser/Simple.pm' ] },
);

# ============================================================================
__END__

