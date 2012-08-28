use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
              NAME                => 'DBICx::Migration',
              AUTHOR              => q{Maik Hentsche <caldrin@cpan.org>},
              VERSION_FROM        => 'lib/DBICx/Migration/Base.pm',
              ($ExtUtils::MakeMaker::VERSION >= 6.3002
               ? ('LICENSE'=> 'perl')
               : ()),
              PL_FILES            => {},
              PREREQ_PM => {
                            'Test::More'    => 0,
                            'Moo'           => 0,
                            'Module::Load'  => 0,
                            'DBICx::Deploy' => 0,
                           },
              dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
              clean               => { FILES => 'DBICx-Migration-*' },
             );
