use strict;
use warnings;
use utf8;

my $n = <>;
my $s = <>;
chomp $n; 
chomp $s;

my @chars = split('', $s);

print "$chars[$n-1]";