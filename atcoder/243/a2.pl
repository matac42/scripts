use strict;
use warnings;
use utf8;

my ($v,$a,$b,$c) = map { $_ - 0 } split(/\s+/,<STDIN>);
my $sum = $a + $b + $c;
my $mod = $v % $sum;

if ($mod < $a) {
    print "F\n";
}
elsif ($mod < $a + $b) {
    print "M\n";
}
else {
    print "T\n";
}