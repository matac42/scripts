use 5.10.0;
use strict;
use warnings;
use utf8;
use List::Util 'min';

my $n = <>;
my @a = do { chomp( my $l = <> ); split m{\s}, $l };
my %hash = ();
foreach (@a) { $hash{$_}++; }
my @unique = sort keys %hash;

my $counter = 0;
foreach (@unique) {
    if ($counter != $unique[$counter]) {
        say $counter;
        exit;
    }
    $counter++;
}