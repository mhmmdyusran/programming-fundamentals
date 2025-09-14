# perl/concepts/arrays.pl
use strict;
use warnings;

sub demonstrate_arrays {
    print "\n=== Arrays ===\n";

    # An array is declared with the `@` sigil.
    my @fruits = ("apple", "banana", "orange", "grape");

    print "List of fruits: @fruits\n";

    # Accessing a single element uses the `$` sigil because it's a scalar.
    print "First fruit: $fruits[0]\n";

    # Negative indices count from the end of the array.
    print "Last fruit: $fruits[-1]\n";
}

1;
