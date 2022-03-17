use strict;
use warnings;
use utf8;

# How to Use
# $perl create-rsync.pl hash.txt
# 
# hash.txt
# (from hash) (to hash)
# ...
#

while (my $line = <>) {
    chomp $line;
    my @oldnew = split(/ /, $line);

    print "rsync -av (from ip addr):/var/opt/gitlab/git-data/repositories/$oldnew[0].git/* /var/opt/gitlab/git-data/repositories/$oldnew[1].git\n";
}
