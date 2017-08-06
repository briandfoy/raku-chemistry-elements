use v6;
use Test;


my $package = 'Chemistry::Elements';
my $method  = 'get_name_by_symbol';

use-ok $package;

# need to load the package first
# this is a Type object ::(...)
my $class = ::($package);

can-ok $class, $method;

my $callable = $class.^find_method( $method );

is
	$class.get_Z_by_symbol("Br"), 35, "Br is 35";

is
	$class."$method"("Br", "en"), 'Bromine',
	'Br is Bromine';

is
	$class."$method"("Br", "de"), 'Brom',
	'Br ist Brom';
	

is
	$class.get_Z_by_symbol("Ne"), 10, "Ne is 10";

is
	$class.$callable("Ne", "en"), 'Neon',
	'Ne is Neon';

is
	$class.$callable("Ne", "de"), 'Neon',
	'Ne ist Neon';

done-testing;

