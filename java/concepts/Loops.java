package concepts;

public class Loops {
    public static void demonstrate() {
        System.out.println("\n=== Loops ===");

        // For loop
        System.out.println("Counting with for loop:");
        for (int i = 1; i < 5; i++) {
            System.out.print(i + " ");
        }
        System.out.println(); // For a new line

        // While loop
        System.out.println("Counting with while loop:");
        int count = 1;
        while (count < 5) {
            System.out.print(count + " ");
            count++;
        }
        System.out.println();
    }
}
