use 5.10.0;
use strict;
use warnings;
use utf8;

local $| = 1;
chomp ( my $n = <> );

my @answer = 1..$n*2+1;
my $input;

while ($#answer+1 != 0) {
    say $answer[0];
    @answer = grep $_ ne $answer[0], @answer;
    chomp ($input = <>);
    @answer = grep $_ ne $input, @answer;
}

exit;