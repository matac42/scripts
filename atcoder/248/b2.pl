use 5.16.0;
use strict;
use warnings;
use utf8;
use POSIX qw(ceil);

my ($a,$b,$k) = do { chomp( my $l = <> ); split m{\s}, $l };

sub log10 {
  my $x = shift;
  return log($x) / log(10);
}

# my $N = abs ceil logk $b/$a;
# my $answer =  int ceil (log10($b)-log10($a))/log10($k);
my $answer = int(ceil(log10($b/$a)/log10($k)));

say $answer;