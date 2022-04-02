use 5.10.0;
use strict;
use warnings;
use utf8;
use List::Util qw(min);

my ($n,$k,$x) = do { chomp( my $l = <> ); split m{\s}, $l };
my @a = do { chomp( my $l = <> ); split m{\s}, $l };
my $answer = 0;
for (my $i = 0; $i < $n; $i++) { $answer += $a[$i] }
my $m = 0;
for (my $i = 0; $i < $n; $i++) { $m += int($a[$i]/$x) }
$m = min($m, $k);
$answer -= $m*$x;
$k -= $m;
for (my $i = 0; $i < $n; $i++) { $a[$i] %= $x }
@a = sort {$b <=> $a} @a;
for (my $i = 0; $i < $n; $i++) {
    last if ($k == 0);
    $answer -= $a[$i];
    $k--;
}
say $answer;