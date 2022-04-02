use 5.10.0;
use strict;
use warnings;
use utf8;

my $n = <>;
my $answer = 2^$n > $n*$n ? "Yes" : "No";

say $answer;