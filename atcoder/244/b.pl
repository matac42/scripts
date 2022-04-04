use 5.10.0;
use strict;
use warnings;
use utf8;

my $n = <>;
my @t = do { chomp( my $l = <> ); split m{}, $l };
my $direction = 0;
# 0 -> x+1
# 1 -> y-1
# 2 -> x-1
# 3 -> y+1
my @answer = (0, 0);

sub set_dir {
    my ($dir) = @_;
    if ($dir < 3) {
        $dir++;
    }
    else {
        $dir = 0;
    }
    return $dir;  
}

sub walk {
    my ($dir, $ans) = @_;
    if ($dir == 0) {
        @$ans[0]++;
    }
    elsif ($dir == 1) {
        @$ans[1]--;
    }
    elsif ($dir == 2) {
        @$ans[0]--;
    }
    else {
        @$ans[1]++;
    }
    return @$ans;
}

for (my $i = 0; $i < $n; $i++) {
    if ($t[$i] eq "S") {
        @answer = walk($direction,\@answer);
    }
    else {
        $direction = set_dir($direction);
    }
}

say "$answer[0] $answer[1]";