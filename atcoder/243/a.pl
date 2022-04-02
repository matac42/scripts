use strict;
use warnings;
use utf8;

my $line = <>;
my @chars = split(' ', $line);

my $v = $chars[0];
my $a = $chars[1];
my $b = $chars[2];
my $c = $chars[3];

while ($v >= 0) {
    $v = $v - $a;
    if ($v < 0) {
        print "F\n";
        exit(0);
    }
    $v = $v - $b;
    if ($v < 0) {
        print "M\n";
        exit(0);
    }
    $v = $v - $c;
    if ($v < 0) {
        print "T\n";
        exit(0);
    }
}