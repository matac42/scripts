use 5.10.0;
use strict;
use warnings;
use utf8;

my ($a,$x,$b) = do { chomp( my $l = <> ); split m{}, $l };
say $a*$b;