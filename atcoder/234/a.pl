use 5.10.0;
use strict;
use warnings;
use utf8;

my $t = <>;

sub f {
    my $x = shift;
    say $x**2 + 2*$x + 3;
}

# say f(f(f($t)+$t)+f(f($t)));
say f($t);