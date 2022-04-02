use 5.10.0;
use strict;
use warnings;
use utf8;

my ($a,$b,$c) = do { chomp( my $l = <> ); split m{\s}, $l };
my $one = $a.$b.$c;
my $two = $b.$c.$a;
my $three = $c.$a.$b;

say $one + $two + $three;