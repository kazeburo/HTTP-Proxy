#!perl -T

use Test::More;
plan skip_all => "Pod coverage testing is running under the AUTHOR_TESTING mode only." unless $ENV{AUTHOR_TESTING};
eval "use Test::Pod::Coverage 1.04";
plan skip_all => "Test::Pod::Coverage 1.04 required for testing POD coverage" if $@;
my $params = {
    trustme => [qr/^ERROR$/]
};
all_pod_coverage_ok($params);
