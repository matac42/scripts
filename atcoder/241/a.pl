use 5.10.0;
use strict;
use warnings;
use utf8;

my @n = do { chomp( my $l = <> ); split m{\s}, $l };
my ($display) = 0;

say $n[$n[$n[$display]]];
exit;