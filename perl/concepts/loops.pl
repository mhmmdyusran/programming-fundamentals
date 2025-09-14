# perl/concepts/loops.pl
use strict;
use warnings;

sub demonstrate_loops {
    print "\n=== Loops ===\n";

    # C-style for loop. The variable must be declared with `my`.
    print "Counting with for loop:\n";
    for (my $i = 1; $i < 5; $i++) {
        print "$i ";
    }
    print "\n";

    # While loop
    print "Counting with while loop:\n";
    my $count = 1;
    while ($count < 5) {
        print "$count ";
        $count++;
    }
    print "\n";
}

1;
