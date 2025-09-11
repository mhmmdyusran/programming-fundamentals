namespace ProgrammingFundamentals.Concepts
{
    public class InputOutput
    {
        public static void Demonstrate()
        {
            Console.WriteLine("\n=== Input and Output ===");
            Console.Write("Enter your name: ");
            string? userInput = Console.ReadLine();
            Console.WriteLine($"Hello, {userInput}!");
        }
    }
}
