use 5.10.0;
use strict;
use warnings;
use utf8;

chomp(my $s1 = <>);
chomp(my $s2 = <>);
my $answer = "Yes";

if ($s1 eq "#." && $s2 eq ".#") {
    $answer = "No";
}
if ($s1 eq ".#" && $s2 eq "#.") {
    $answer = "No";
}

say $answer;