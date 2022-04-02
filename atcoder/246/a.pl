use 5.10.0;
use strict;
use warnings;
use utf8;

my ($x1,$y1) = do { chomp( my $l = <> ); split m{\s}, $l };
my ($x2,$y2) = do { chomp( my $l = <> ); split m{\s}, $l };
my ($x3,$y3) = do { chomp( my $l = <> ); split m{\s}, $l };

my @answer = [];

if ($x1 == $x2) {
    push @answer, $x3;
}
elsif ($x1 == $x3) {
    push @answer, $x2;
}
else {
    push @answer, $x1;
}

if ($y1 == $y2) {
    push @answer, $y3;
}
elsif ($y1 == $y3) {
    push @answer, $y2;
}
else {
    push @answer, $y1;
}

say "$answer[1] $answer[2]";