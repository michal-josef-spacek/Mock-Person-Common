#!/usr/bin/env perl

# Pragmas.
use strict;
use warnings;

# Modules.
use Encode qw(decode_utf8 encode_utf8);
use Mock::Person::Common qw(name);

# Data.
@Mock::Person::Common::FIRST_MALE = (decode_utf8('Štefan'));
@Mock::Person::Common::MIDDLE_MALE = (decode_utf8('Lukáš'));
@Mock::Person::Common::LAST_MALE = (decode_utf8('Šimek'));

# Error.
print encode_utf8(name())."\n";

# Output:
# Štefan Lukáš Šimek