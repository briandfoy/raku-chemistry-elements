use v6;
use Test;

my $package = 'Chemistry::Elements';

use-ok $package;
use Chemistry::Elements;

my $class = ::($package);
can-ok $class, 'min_Z';
can-ok $class, 'max_Z';

is $class.min_Z,   1, 'Min Z is 1';
is $class.max_Z, 118, 'Max Z is 118';

done-testing;
