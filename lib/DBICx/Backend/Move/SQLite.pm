package DBICx::Backend::Move::SQLite;

use 5.010;
use strict;
use warnings;
use Moo;

extends 'DBICx::Backend::Move';

sub migrate
{
        my ( $self, $connect_from, $connect_to, $schema, $verbose ) = @_;

        $self->deploy($schema, $connect_to->[0]);

        my $from = $schema->connect(@$connect_from);
        my $to   = $schema->connect(@$connect_to);

        $self->transfer_data($from, $to, $verbose);
        return 0;
}

1;
