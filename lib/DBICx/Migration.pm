package DBICx::Migration;

use 5.006;
use strict;
use warnings;


=head1 NAME

DBICx::Migration - Migrate an existing database to another backend

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

    use DBICx::Migration;

    my $connect_from = [ 'dbi:mysql:dbname=mydb', 'mysql_user', 'mysql_password' ];
    my $connect_to   = [ 'dbi::pg::dbname=mydb' , 'psql_user' , 'psql_password'  ];
    my $schema       = 'My::Schema';


    if (not my $error = DBICx::Migration::migrate( $connect_from, $connect_to, $schema) {
          die $error;
    }

$connect_from and $connect_to are passed to DBIx::Class::Schema->connect. For
more information see L<DBIx::Class::Storage::DBI/"connect_info">.


=head1 SUBROUTINES

=head2 migrate

Execute the migration process.

@param array ref - connection info of source db      - DSN, username, password, option hash
@param array ref - connection info of destination db - DSN, username, password, option hash
@param string    - name of the schema

@return success - 0
@return error   - error string

=cut

sub migrate
{
        my ( $connect_from, $connect_to, $schema ) = @_;


}


=head1 AUTHOR

Maik Hentsche, C<< <Caldrin at cpan dot org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-dbicx-migration at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=DBICx-Migration>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc DBICx::Migration


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=DBICx-Migration>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/DBICx-Migration>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/DBICx-Migration>

=item * Search CPAN

L<http://search.cpan.org/dist/DBICx-Migration/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2012 Maik Hentsche.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.


=cut

1; # End of DBICx::Migration
