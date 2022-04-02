use 5.10.0;
use strict;
use warnings;
use utf8;

my $n = <>;
my $answer = $n < 2**31 && $n >= -(2**31) ? "Yes" : "No";
say $answer;