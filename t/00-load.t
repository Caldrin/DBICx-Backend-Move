#!perl -T

use Test::More tests => 2;

BEGIN {
    use_ok( 'DBICx::Migration::SQLite' ) || print "Bail out!\n";
    use_ok( 'DBICx::Migration::Psql' ) || print "Bail out!\n";
}

diag( "Testing DBICx::Migration $DBICx::Migration::Base::VERSION, Perl $], $^X" );
