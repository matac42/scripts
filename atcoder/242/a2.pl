use 5.10.0;
use strict;
use warnings;
use utf8;

my ($a,$b,$c,$x) = do { chomp( my $l = <> ); split m{\s}, $l };

if ($x<=$a) say 1;
elsif ($x>$b) say 0;
else $c / ($b-$a);

exit;