#!/usr/bin/perl

use FindBin;
use lib "$FindBin::Bin/lib";
use Point3D;
use feature qw/say/;

my $point3d = Point3D->new;

$point3d->x(1);

say $point3d;
$point3d->y(2);
$point3d->z(3);
