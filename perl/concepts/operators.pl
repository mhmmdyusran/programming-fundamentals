# perl/concepts/operators.pl
use strict;
use warnings;

sub demonstrate_operators {
    print "\n=== Operators ===\n";
    my $a = 10;
    my $b = 3;

    # Arithmetic Operators
    print "Arithmetic Operators\n";
    print "Addition: " . ($a + $b) . "\n";
    print "Subtraction: " . ($a - $b) . "\n";
    print "Multiplication: " . ($a * $b) . "\n";
    print "Division: " . ($a / $b) . "\n";

    # Comparison Operators
    # Perl has different operators for numeric and string comparison.
    print "\nNumeric Comparison\n";
    print "Is a > b? " . ($a > $b) . "\n"; # 1 for true

    print "\nString Comparison\n";
    my $str1 = "apple";
    my $str2 = "banana";
    # `lt` means 'less than' for strings.
    print "Is '$str1' lt '$str2'? " . ($str1 lt $str2) . "\n"; # 1 for true
}

1;
