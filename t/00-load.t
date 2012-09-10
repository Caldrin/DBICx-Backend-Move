#!perl -T

use Test::More tests => 2;

BEGIN {
    use_ok( 'DBICx::Backend::Move::SQLite' ) || print "Bail out!\n";
    use_ok( 'DBICx::Backend::Move::Psql' ) || print "Bail out!\n";
}

diag( "Testing DBICx::Backend::Move $DBICx::Backend::Move::Base::VERSION, Perl $], $^X" );
