package Mock::Person::Common;

# Pragmas.
use base qw(Exporter);
use strict;
use warnings;

# Modules.
use Readonly;

# Constants.
Readonly::Array our @EXPORT_OK => qw(first_male first_female middle_female
	last_male last_female middle_male middle_female name);
Readonly::Scalar our $SPACE => q{ };

# Version.
our $VERSION = 0.01;

# Data variables.
our @FIRST_MALE;
our @FIRST_FEMALE;
our @MIDDLE_MALE;
our @MIDDLE_FEMALE;
our @LAST_MALE;
our @LAST_FEMALE;

# Get random first male name.
sub first_male {
	return $FIRST_MALE[rand @FIRST_MALE];
}

# Get random first female name.
sub first_female {
	return $FIRST_FEMALE[rand @FIRST_FEMALE];
}

# Get random last male name.
sub last_male {
	return $LAST_MALE[rand @LAST_MALE];
}

# Get random last female name.
sub last_female {
	return $LAST_FEMALE[rand @LAST_FEMALE];
}

# Get random middle male name.
sub middle_male {
	return $MIDDLE_MALE[rand @MIDDLE_MALE];
}

# Get random middle female name.
sub middle_female {
	return $MIDDLE_FEMALE[rand @MIDDLE_FEMALE];
}

# Get random name.
sub name {
	my $sex = shift;
	if (defined $sex && $sex eq 'female') {
		return first_female().$SPACE.middle_female().$SPACE.last_female();
	} else {
		return first_male().$SPACE.middle_male().$SPACE.last_male();
	}
}

1;

__END__

=encoding UTF-8

=cut

=head1 NAME

Mock::Person::Common - Mock::Person common subroutines.

=head1 SYNOPSIS

 use Mock::Person::Common qw(first_male first_female last_male last_female
         middle_male middle_female name);
 my $first_male = first_male();
 my $first_female = first_female();
 my $last_male = last_male();
 my $last_female = last_female();
 my $middle_male = middle_male();
 my $middle_female = middle_female();
 my $name = name($sex);

=head1 SUBROUTINES

=over 8

=item B<first_male()>

Returns random first name of male person.

=item B<first_female()>

Returns random first name of female person.

=item B<last_male()>

Returns random last name of male person.

=item B<last_female()>

Returns random last name of female person.

=item B<middle_male()>

Returns random middle name of male person.

=item B<middle_female()>

Returns random middle name of female person.

=item B<name([$sex])>

Recieves scalar with sex of the person ('male' or 'female') and returns
scalar with generated name.
Default value of $sex variable is 'male'.

=back

=head1 VARIABLES

=over 8

=item * C<@FIRST_MALE>

 Array with possible first male names.
 Affect first_male() and name() subroutines.

=item * C<@FIRST_FEMALE>

 Array with possible first female names.
 Affect first_female() and name() subroutines.

=item * C<@MIDDLE_MALE>

 Array with possible middle male names.
 Affect middle_male() and name() subroutines.

=item * C<@MIDDLE_FEMALE>

 Array with possible middle female names.
 Affect middle_female() and name() subroutines.

=item * C<@LAST_MALE>

 Array with possible last male names.
 Affect last_male() and name() subroutines.

=item * C<@LAST_FEMALE>

 Array with possible last female names.
 Affect last_female() and name() subroutines.

=back

=head1 EXAMPLE

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

=head1 DEPENDENCIES

L<Exporter>,
L<Readonly>.

=head1 SEE ALSO

L<Mock::Person>,
L<Mock::Person::DE>,
L<Mock::Person::EN>,
L<Mock::Person::SK>,
L<Mock::Person::SK::ROM>,
L<Mock::Person::SV>,
L<Mock::Person::RU>.

=head1 REPOSITORY

L<https://github.com/tupinek/Mock-Person-Common>

=head1 AUTHOR

Michal Špaček L<mailto:skim@cpan.org>

L<http://skim.cz>

=head1 LICENSE AND COPYRIGHT

BSD license.

=head1 VERSION

0.01

=cut
