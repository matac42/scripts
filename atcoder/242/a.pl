use 5.10.0;
use strict;
use warnings;
use utf8;

my ($a,$b,$c,$x) = do { chomp( my $l = <> ); split m{\s}, $l };

if ($a>=$x) {
    say "1";
}
elsif ($a<$x && $x<=$b) {
    my $prob = $c / ($b-$a);
    say $prob;
}
else {
    say '0';
}

exit;