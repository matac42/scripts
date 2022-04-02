use 5.10.0;
use strict;
use warnings;
use utf8;

my ($a,$b) = do { chomp( my $l = <> ); split m{\s}, $l };
if ($a == 0) {
    say "0 1";
    exit;
}
my $x = sqrt(($a*$a)/($a*$a+$b*$b));
my $y = ($x*$b)/$a;

say "$x $y";