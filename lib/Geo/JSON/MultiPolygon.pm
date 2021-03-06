package Geo::JSON::MultiPolygon;

# VERSION

# ABSTRACT: object representing a geojson MultiPolygon

use Moo;
extends 'Geo::JSON::Geometry';

use Geo::JSON::Types -types;

has '+coordinates' => ( isa => Polygons );

sub all_positions {
    my $self = shift;

    return [
        map { @{$_} }
        map { @{$_} }
        map { @{$_} } @{ $self->coordinates }
    ];
}

=head1 SYNOPSIS

    use Geo::JSON::MultiPolygon;
    my $mpol = Geo::JSON::MultiPolygon->new({
        coordinates => [
            [   [...],     # outer linear ring
                [...], ... # inner linear ring(s)
            ],
            [...],
            ],
        },
    });
    my $json = $mpol->to_json;

=head1 DESCRIPTION

A GeoJSON object with a coordinates of an arrayref of polygon coordinates.

=cut

1;

