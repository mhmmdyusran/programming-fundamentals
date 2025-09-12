package concepts;

public class Conditionals {
    public static void demonstrate() {
        System.out.println("\n=== Conditional Statements ===");
        int number = 15;

        if (number > 0) {
            System.out.println(number + " is positive");
        } else if (number < 0) {
            System.out.println(number + " is negative");
        } else {
            System.out.println("The number is zero");
        }
    }
}
