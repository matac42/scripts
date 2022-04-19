use 5.16.0;
use strict;
use warnings;
use utf8;

my ($a,$b,$k) = do { chomp( my $l = <> ); split m{\s}, $l };
my $count = 0;
while (not ($a >= $b)) {
    $a *= $k;
    $count++;
}
say $count;