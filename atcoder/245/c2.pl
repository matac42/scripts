use 5.10.0;
use strict;
use warnings;
use utf8;
use Data::Dumper;

my ($n,$k) = do { chomp( my $l = <> ); split m{\s}, $l };
my @a = do { chomp( my $l = <> ); split m{\s}, $l };
my @b = do { chomp( my $l = <> ); split m{\s}, $l };
my @ab = zip(\@a, \@b);
my @tmp = (1, 1);
my $answer = 1;

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
my @cd = zip(\@a, \@b);
say Dumper(\@cd);
for (my $i = 0; $i < $n-1; $i++) {
    my @tmp_a = (0, 0);
    for (my $j = 0; $j <= 1; $j++) {
        if ($tmp[$j]) {
            if (abs($ab[$i][$j]-$ab[$i+1][$j])<=$k) {
                $tmp_a[$j] = 1;
            }
            if (abs($ab[$i][$j]-$ab[$i+1][1-$j])<=$k) {
                $tmp_a[1-$j] = 1;
            }
        }
    }
    if (not($tmp_a[0] || $tmp_a[1])) {
        $answer = 0;
        last;
    }
    @tmp = @tmp_a;
}

$answer ? say "Yes" : say "No";