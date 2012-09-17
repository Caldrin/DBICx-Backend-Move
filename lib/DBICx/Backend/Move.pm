package DBICx::Backend::Move;

use 5.010;
use strict;
use warnings;
use Moo;
use Module::Load 'load';
use DBICx::Deploy;

our $VERSION=1.000003;

sub deploy
{
        my ( $self, $schema, $connect ) = @_;
        load $schema;
        DBICx::Deploy->deploy($schema, $connect);
        return;
}


sub transfer_data
{
        my ( $self, $from, $to, $verbose ) = @_;

        foreach my $source_name ($from->sources) {
                say STDERR "Source $source_name" if $verbose;
                my $source_rs = $from->resultset($source_name);
                $source_rs->result_class('DBIx::Class::ResultClass::HashRefInflator');
                while (my $row = $source_rs->next) {
                        print STDERR "." if $verbose;
                        my $new_row = $to->resultset($source_name)->new($row);
                        $new_row->insert;
                }
                print STDERR "\n" if $verbose;
        }
        return;
}

1;
