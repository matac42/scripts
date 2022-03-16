use strict;
use warnings;
use utf8;
use GitLab::API::v4;

# Create GitLab Group and Project by fullpath
#
# Setup
# - $cpanm GitLab::API::v4
# - Generate an access token on the GitLab web console and set it to $token
# - Set GitLab API URL to $v4_api_url
# 
# How To Use
# $perl create-empty-project.pl fullpath.txt
# 
# fullpath.txt Ex
# group1/subgroup1/project1
# group2/subgroup1/project1
# ...
#
# Author: matac


my $v4_api_url = "https://example.com/api/v4";
my $token = "(pleas set access token here)"; 
my $api = GitLab::API::v4->new(
    url           => $v4_api_url,
    private_token => $token,
);

while (my $line = <>) {
    chomp $line;
    my @names = split(/\//, $line);
    my $path_length = @names;

    for (my $count = 0; $count < $path_length; $count++) {
        if ($count == $path_length-1) {
            eval {
                my $parent_group = $api->groups({
                    order_by => "similarity",
                    search => join('/',@names[0..$count-1]),
                });
                my $parent_id = $parent_group->[0]->{'id'};
                my $project = $api->create_project({
                    path          => $names[$count],
                    namespace_id  => $parent_id ? $parent_id : "",
                });
            };
            if ($@) {
                print "project: $names[$count] is already exists.\n";
            } else {
                print "created project: $names[$count]\n";
            }
        }
        else {
            my $parent_id;
            if ($count > 0) {
                my $parent_group = $api->groups({
                    order_by => "similarity",
                    search => join('/',@names[0..$count-1]),
                });
                $parent_id = $parent_group->[0]->{'id'};
            }
            eval {
                my $group = $api->create_group({
                    name          => $names[$count],
                    path          => $names[$count],
                    parent_id     => $parent_id ? $parent_id : "",
                });
            };
            if ($@) {
                print "group: $names[$count] is already exists.\n";
            } else {
                print "created group: $names[$count]\n";
            }
        }
    }
}
