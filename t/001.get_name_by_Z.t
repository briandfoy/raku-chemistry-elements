use v6;
use Test;

plan 4;

my $package = 'Chemistry::Elements';
my $method  = 'get_name_by_Z';

use-ok $package;

# need to load the package first
# this is a Type object ::(...)
my $class = ::($package);

can-ok $class, $method;

my $callable = $class.^find_method( $method );

is
	$class."$method"(37), 'Rubidium',
	'Z=37 is Rubidium';

is
	$class.$callable(1), 'Hydrogen',
	'Z=1 is Hydrogen';

done-testing;
