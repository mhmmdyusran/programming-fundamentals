// Import all classes from the 'concepts' package
import concepts.*;

public class Main {
    // The main entry point for any Java application
    public static void main(String[] args) {
        // Call the static 'demonstrate' method from each class
        Variables.demonstrate();
        Operators.demonstrate();
        Conditionals.demonstrate();
        Loops.demonstrate();
        Arrays.demonstrate();
        Functions.demonstrate();
        InputOutput.demonstrate();

        System.out.println("\nAll Java demonstrations completed successfully.");
    }
}
