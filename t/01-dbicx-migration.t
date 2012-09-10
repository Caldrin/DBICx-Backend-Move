#!perl

use strict;
use warnings;
no warnings 'uninitialized'; # I would use common::sense but I don't want to increase the requirement list :-)

use Test::More;
use lib 't/lib';

use DBICx::Backend::Move::Test::Schema::TestTools;
my $error = DBICx::Backend::Move::Test::Schema::TestTools::setup_db('t/fixtures/testdb.yml', 'dbi:SQLite:dbname=t/from.sqlite');
die $error if $error;
unlink 't/to.sqlite';

use_ok('DBICx::Backend::Move::SQLite');

my $connect_from = [ 'dbi:SQLite:dbname=t/from.sqlite', '', '' ];
my $connect_to   = [ 'dbi:SQLite:dbname=t/to.sqlite'  , '', '' ];
my $schema       = 'DBICx::Backend::Move::Test::Schema';


my $migrator = DBICx::Backend::Move::SQLite->new();
my $retval = $migrator->migrate($connect_from, $connect_to, $schema);
is($retval, 0, 'Migrated database');


done_testing();
