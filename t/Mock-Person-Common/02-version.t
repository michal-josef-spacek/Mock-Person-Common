use strict;
use warnings;

use Mock::Person::Common;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Mock::Person::Common::VERSION, 0.01, 'Version.');
