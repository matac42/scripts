use 5.10.0;
use strict;
use warnings;
use utf8;

chomp(my $n = <>);
$n >= 42 ? print "AGC"."0"x(3-length($n+1)).($n+1)."\n" : print "AGC"."0"x(3-length($n)).($n)."\n";
