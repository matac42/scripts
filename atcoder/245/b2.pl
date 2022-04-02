use 5.10.0;
use strict;
use warnings;
use utf8;

my $n = <>;
my @a = do { chomp( my $l = <> ); split m{\s}, $l };

foreach my $i (0..2000) {
    next if grep { $_ eq $i } @a;
    say $i;
    exit;
}