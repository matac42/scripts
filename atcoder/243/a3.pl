use 5.10.0;
use strict;
use warnings;
use utf8;

my ($v,$a,$b,$c) = do { chomp( my $l = <> ); split m{\s}, $l };
my $sum = $a+$b+$c;
my $mod = $v%$sum;

if ($mod<$a) {
    say("F");
}
elsif ($mod<$a+$b) {
    say("M");
}
else {
    say("T");
}

exit;