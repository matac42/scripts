use strict;
use warnings;
use utf8;
use Data::Dumper;

sub zip {
    my ($x, $y) = @_;
    my $len = @$x;
    my @aa;
    for (my $i = 0; $i < $len; $i++) {
        push @{$aa[$i]}, @$x[$i];
        push @{$aa[$i]}, @$y[$i];
    }
    return @aa;
}

my @a = (1,2,3,4,5);
my @b = (6,7,8,9,10);
my @ab = zip(\@a, \@b);

print Dumper(\@ab);