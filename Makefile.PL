use strict;
use warnings;

use inc::Module::Install;

# Definition.
abstract 'Mock::Person common subroutines.';
author 'Michal Josef Spacek <skim@cpan.org>';
license 'bsd';
name 'Mock-Person-Common';
readme_from 'Common.pm';
requires 'Exporter' => 0;
requires 'Readonly' => 0;
resources 'bugtracker' => 'https://rt.cpan.org/Public/Dist/Display.html'.
	'?Name=Mock-Person-Common';
resources 'homepage' => 'https://github.com/tupinek/Mock-Person-Common';
resources 'repository' => 'git://github.com/tupinek/Mock-Person-Common';
test_requires 'English' => 0;
test_requires 'File::Object' => 0.05;
test_requires 'List::MoreUtils' => 0;
test_requires 'Test::More' => 0;
test_requires 'Test::NoWarnings' => 0;
test_requires 'Test::Pod' => 0;
test_requires 'Test::Pod::Coverage' => 0;
tests_recursive;
version '0.01';

# Run.
WriteAll();
