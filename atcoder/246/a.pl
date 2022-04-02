use 5.10.0;
use strict;
use warnings;
use utf8;

my ($x1,$y1) = do { chomp( my $l = <> ); split m{\s}, $l };
my ($x2,$y2) = do { chomp( my $l = <> ); split m{\s}, $l };
my ($x3,$y3) = do { chomp( my $l = <> ); split m{\s}, $l };

my ($xans, $yans);

$xans = $x3 if ($x1 == $x2);
$xans = $x2 if ($x1 == $x3);
$xans = $x1 if ($x2 == $x3);

$yans = $y3 if ($y1 == $y2);
$yans = $y2 if ($y1 == $y3);
$yans = $y1 if ($y2 == $y3);

say "$xans $yans";