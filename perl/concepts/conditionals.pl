# perl/concepts/conditionals.pl
use strict;
use warnings;

sub demonstrate_conditionals {
    print "\n=== Conditional Statements ===\n";
    my $number = 15;

    # Note the use of `elsif` instead of `else if`.
    if ($number > 0) {
        print "$number is positive\n";
    } elsif ($number < 0) {
        print "$number is negative\n";
    } else {
        print "The number is zero\n";
    }
}

1;
