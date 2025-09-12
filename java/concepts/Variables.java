package concepts;

public class Variables {
    public static void demonstrate() {
        System.out.println("\n=== Variables and Data Types ===");

        // Types are declared before the variable name.
        String name = "John Doe"; // String is a class
        int age = 25;             // int is a primitive type
        double height = 1.75;     // double is a primitive type for decimals
        boolean isStudent = true; // boolean is a primitive type

        // We can get the class name for object types.
        System.out.println("Name: " + name + " (Type: " + name.getClass().getSimpleName() + ")");
        // For primitives, we state the known type.
        System.out.println("Age: " + age + " (Type: int)");
        System.out.println("Height: " + height + " (Type: double)");
        System.out.println("Is Student: " + isStudent + " (Type: boolean)");
    }
}
