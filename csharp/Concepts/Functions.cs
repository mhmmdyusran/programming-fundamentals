namespace ProgrammingFundamentals.Concepts
{
    public class Functions
    {
        // Function with a single parameter
        private static int CalculateSquare(int number)
        {
            return number * number;
        }

        // Function with optional parameter
        private static string Greet(string name, string greeting = "Hello")
        {
            return $"{greeting}, {name}!";
        }

        public static void Demonstrate()
        {
            Console.WriteLine("\n=== Functions ===");

            Console.WriteLine($"Square of 5 is: {CalculateSquare(5)}");
            Console.WriteLine(Greet("Yusran"));
            Console.WriteLine(Greet("Firmansyah", "Hi"));
        }
    }
}
