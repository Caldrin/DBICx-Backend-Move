use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'DBICx::Migration',
    AUTHOR              => q{Maik Hentsche <maik@mm-double.de>},
    VERSION_FROM        => 'lib/DBICx/Migration.pm',
    ABSTRACT_FROM       => 'lib/DBICx/Migration.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'DBICx-Migration-*' },
);
