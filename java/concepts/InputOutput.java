package concepts;

import java.util.Scanner;

public class InputOutput {
    public static void demonstrate() {
        System.out.println("\n=== Input and Output ===");

        // Create a Scanner object to read from standard input
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter your name: ");

        // Read the next line of text
        String userInput = scanner.nextLine();

        System.out.println("Hello, " + userInput + "!");
        
        // It's good practice to close the scanner when you're done.
        scanner.close();
    }
}
