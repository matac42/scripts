use 5.10.0;
use strict;
use warnings;
use utf8;

my ($n,$k) = do { chomp( my $l = <> ); split m{\s}, $l };
my @a = do { chomp( my $l = <> ); split m{\s}, $l };
my @b = do { chomp( my $l = <> ); split m{\s}, $l };

my @tmp = (1, 1);

for (my $i = 0; $i < $n-1; $i++) {
    my @tmp_a = (0, 0);
    if ($tmp[0]) {
        if (abs($a[$i]-$a[$i+1])<=$k) {
            $tmp_a[0] = 1;
        }
        if (abs($a[$i]-$b[$i+1])<=$k) {
            $tmp_a[1] = 1;
        }
    }
    if ($tmp[1]) {
        if (abs($b[$i]-$b[$i+1])<=$k) {
            $tmp_a[1] = 1;
        }
        if (abs($b[$i]-$a[$i+1])<=$k) {
            $tmp_a[0] = 1;
        }
    }
    if (not($tmp_a[0] || $tmp_a[1])) {
        say "No";
        exit;
    }
    @tmp = @tmp_a;
}
say "Yes";