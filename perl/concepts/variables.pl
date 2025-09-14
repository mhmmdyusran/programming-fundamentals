# perl/concepts/variables.pl
use strict;
use warnings;

sub demonstrate_variables {
    print "\n=== Variables and Data Types ===\n";

    # Variables must be declared with `my`.
    # The `$` sigil denotes a scalar (single) value.
    my $name = "John Doe";
    my $age = 25;
    my $height = 1.75;
    # In Perl, true is any non-zero number or non-empty string.
    # False is 0, '0', '', or undef.
    my $is_student = 1; # Using 1 for true

    # String interpolation works inside double quotes.
    print "Name: $name (Type: Scalar)\n";
    print "Age: $age (Type: Scalar)\n";
    print "Height: $height (Type: Scalar)\n";
    print "Is Student: $is_student (Type: Scalar)\n";
}

# All files loaded via `require` must return a true value.
1;
