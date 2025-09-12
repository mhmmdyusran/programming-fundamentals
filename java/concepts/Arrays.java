package concepts;

import java.util.ArrayList;
import java.util.List;

public class Arrays {
    public static void demonstrate() {
        System.out.println("\n=== Arrays & ArrayLists ===");

        // An ArrayList is a resizable array, which is very flexible.
        List<String> fruitsList = new ArrayList<>();
        fruitsList.add("apple");
        fruitsList.add("banana");
        fruitsList.add("orange");
        fruitsList.add("grape");

        System.out.println("ArrayList: " + fruitsList);

        // Access the first element.
        System.out.println("First fruit: " + fruitsList.get(0));

        // Access the last element using the .size() method.
        System.out.println("Last fruit: " + fruitsList.get(fruitsList.size() - 1));
    }
}
