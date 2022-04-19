use 5.16.0;
use strict;
use warnings;
use utf8;

my @s = do { chomp( my $l = <> ); split m{}, $l };

for (my $i = 0; $i <= 9; $i++) {
    say $i if not grep { $_ eq $i } @s;
}