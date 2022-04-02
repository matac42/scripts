use 5.10.0;
use strict;
use warnings;
use utf8;

my ($a,$b)=split(/\s/,<>);
if (abs($a-$b)==1||abs($a-$b)==9) { say "Yes" }
else { say "No" }
exit;