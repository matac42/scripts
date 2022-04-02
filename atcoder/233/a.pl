use 5.10.0;
use strict;
use warnings;
use utf8;

my ($x,$y) = do { chomp( my $l = <> ); split m{\s}, $l };
my $answer = 0;
$y = $y - $x;

while ($y > 0) {
    $y = $y - 10;
    $answer++;
}

say $answer;