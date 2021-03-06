package Geo::JSON::LineString;

# VERSION

# ABSTRACT: object representing a geojson LineString

use Moo;
extends 'Geo::JSON::Geometry';

use Geo::JSON::Types -types;

has '+coordinates' => ( isa => LineString );

sub all_positions {
    my $self = shift;

    return [ map { @{$_} } @{ $self->coordinates } ];
}

=head1 SYNOPSIS

    use Geo::JSON::LineString;
    my $ls = Geo::JSON::LineString->new({
        coordinates => [ [ 51.50101, -0.14159 ], ... ],
    });
    my $json = $ls->to_json;

=head1 DESCRIPTION

A GeoJSON object with a coordinates attribute of an arrayref of
positions.

=cut

1;

