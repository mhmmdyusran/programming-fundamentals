# perl/concepts/input_output.pl
use strict;
use warnings;

sub demonstrate_io {
    print "\n=== Input and Output ===\n";

    print "Enter your name: ";

    # Read a line from standard input.
    my $user_input = <STDIN>;

    # `chomp` removes the trailing newline character from the input.
    chomp($user_input);

    print "Hello, $user_input!\n";
}

1;
