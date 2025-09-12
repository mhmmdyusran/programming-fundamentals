package concepts;

public class Operators {
    public static void demonstrate() {
        System.out.println("\n=== Operators ===");
        int a = 10;
        int b = 3;

        // Arithmetic Operators
        System.out.println("Arithmetic Operators");
        System.out.println("Addition: " + (a + b));
        System.out.println("Subtraction: " + (a - b));
        System.out.println("Multiplication: " + (a * b));
        // Integer division truncates the result.
        System.out.println("Integer Division: " + (a / b));
        // Cast one operand to double for floating-point division.
        System.out.println("Float Division: " + ((double) a / b));

        // Comparison Operators
        System.out.println("\nComparison Operators");
        System.out.println("Is a > b? " + (a > b));
        System.out.println("Is a == b? " + (a == b));
    }
}
