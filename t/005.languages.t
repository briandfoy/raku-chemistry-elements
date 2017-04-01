use v6;
use Test;

use Chemistry::Elements;

my $package = 'Chemistry::Elements';

use-ok $package;

my $class = ::($package);
can-ok $class, 'lang_str_to_column';

my @tests = (
	( 'pigLatin' ),
	( 'en', 'en_US', 'default' ),
	( 'en_UK' ),
	( 'de' ),
	( 'ru' ),
	);

for 0 .. @tests.end -> $index {
	my @list = @tests[$index].flat;
	for @list -> $item {
		is $class.lang_str_to_column( $item ), $index, "$item returns column $index";
		}

	};

done-testing;
