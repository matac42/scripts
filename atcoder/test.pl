use 5.16.0;
use strict;
use warnings;
use utf8;

sub matac {
    return __SUB__;
}

say __FILE__;
say __LINE__;
say __PACKAGE__;
say matac;
say <DATA>;

__DATA__
hoge