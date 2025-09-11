namespace ProgrammingFundamentals.Concepts
{
    public class Arrays
    {
        public static void Demonstrate()
        {
            Console.WriteLine("\n=== Arrays ===");
            string[] fruits = new[] { "apple", "banana", "orange", "grape" };

            Console.WriteLine($"List of fruits: [{string.Join(", ", fruits)}]");
            Console.WriteLine($"First fruit: {fruits[0]}");
            Console.WriteLine($"Last fruit: {fruits[^1]}"); // Using index from end operator

            // List example (more common in C#)
            Console.WriteLine("\nList example:");
            List<string> fruitList = new() { "apple", "banana", "orange", "grape" };
            Console.WriteLine($"List of fruits: [{string.Join(", ", fruitList)}]");
            Console.WriteLine($"First fruit: {fruitList[0]}");
            Console.WriteLine($"Last fruit: {fruitList[^1]}");
        }
    }
}
