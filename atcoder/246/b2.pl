use 5.10.0;
use strict;
use warnings;
use utf8;

my ($a,$b) = do { chomp( my $l = <> ); split m{\s}, $l };
my $theta = atan2($b, $a);
print (cos($theta)." ".sin($theta)."\n");