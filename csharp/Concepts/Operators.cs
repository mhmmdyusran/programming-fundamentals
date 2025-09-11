namespace ProgrammingFundamentals.Concepts
{
    public class Operators
    {
        public static void Demonstrate()
        {
            Console.WriteLine("\n=== Operators ===");
            int a = 10;
            int b = 3;

            // Arithmetic operators
            Console.WriteLine($"Addition: {a + b}");
            Console.WriteLine($"Subtraction: {a - b}");
            Console.WriteLine($"Multiplication: {a * b}");
            Console.WriteLine($"Division: {(double)a / b}"); // Cast to double for decimal division

            // Comparison operators
            Console.WriteLine($"Is a > b? {a > b}");
            Console.WriteLine($"Is a == b? {a == b}");
        }
    }
}
