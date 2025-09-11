namespace ProgrammingFundamentals.Concepts
{
    public class Conditionals
    {
        public static void Demonstrate()
        {
            Console.WriteLine("\n=== Conditional Statements ===");
            int number = 15;

            if (number > 0)
            {
                Console.WriteLine($"{number} is positive");
            }
            else if (number < 0)
            {
                Console.WriteLine($"{number} is negative");
            }
            else
            {
                Console.WriteLine("The number is zero");
            }
        }
    }
}
