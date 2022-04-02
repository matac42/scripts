use 5.10.0;
use strict;
use warnings;
use utf8;

my @s = do { chomp( my $l = <> ); split m{}, $l };
my ($a,$b) = do { chomp( my $l = <> ); split m{\s}, $l };

my $tmp = $s[$a-1];
@s[$a-1] = $s[$b-1];
@s[$b-1] = $tmp;

say @s;