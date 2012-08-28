package DBICx::Migration::Psql;

use 5.010;
use strict;
use warnings;
use Moo;
use Module::Load 'load';
use DBICx::Deploy;

extends 'DBICx::Migration::Base';

sub migrate
{
        my ( $self, $connect_from, $connect_to, $schema, $verbose ) = @_;

        $self->deploy($schema, $connect_to->[0]);

        my $from = $schema->connect(@$connect_from);
        my $to   = $schema->connect(@$connect_to);

        $to->txn_do(sub { $to->storage->dbh->do("SET CONSTRAINTS ALL DEFERRED"); $self->transfer_data($from, $to, $verbose) });

        return 0;
}

1;
