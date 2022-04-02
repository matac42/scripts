use 5.10.0;
use strict;
use warnings;
use utf8;
use List::Util 'min';

my $n = <>;
my @a = do { chomp( my $l = <> ); split m{\s}, $l };

my @answer = 0..$n-1;

say @answer;