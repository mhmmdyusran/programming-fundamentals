package concepts;

public class Functions {
    // A private helper method
    private static int calculateSquare(int number) {
        return number * number;
    }

    // Java doesn't have default parameters.
    // Method overloading is one way to simulate them, but for simplicity,
    // we will create one method that requires all arguments.
    private static String greet(String name, String greeting) {
        return greeting + ", " + name + "!";
    }

    public static void demonstrate() {
        System.out.println("\n=== Functions (Methods) ===");

        System.out.println("Square of 5 is: " + calculateSquare(5));

        // Call greet with both parameters.
        System.out.println(greet("Yusran", "Hello"));
        System.out.println(greet("Firmansyah", "Hi"));
    }
}
