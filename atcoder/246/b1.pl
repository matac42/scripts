use 5.10.0;
use strict;
use warnings;
use utf8;

my ($x,$y) = do { chomp( my $l = <> ); split m{\s}, $l };
my $d = sqrt($x*$x+$y*$y);
print (($x/$d)." ".($y/$d)."\n");