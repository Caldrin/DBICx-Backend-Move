#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'DBICx::Migration' ) || print "Bail out!\n";
}

diag( "Testing DBICx::Migration $DBICx::Migration::VERSION, Perl $], $^X" );
