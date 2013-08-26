#!perl -T

use Test::More;
eval "use Test::Pod::Coverage 1.04";
plan skip_all => "Test::Pod::Coverage 1.04 required for testing POD coverage" if $@;
my $params = {
    trustme => [qr/^ERROR$/]
};

require Config;
my @modules =  grep { $Config::Config{useithreads} || $_ ne 'HTTP::Proxy::Engine::Threaded' } all_modules();
plan tests => scalar @modules;
pod_coverage_ok($_, $params) for @modules;


