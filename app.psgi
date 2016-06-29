use strict;
use utf8;

use lib "lib";

my $app = sub {
    my $fh;
    my $env = shift;
    return [ 200, ['Content-Type' => 'text/plain'], [ "OK" ] ] ;
}
