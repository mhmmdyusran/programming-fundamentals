namespace ProgrammingFundamentals.Concepts
{
    public class Loops
    {
        public static void Demonstrate()
        {
            Console.WriteLine("\n=== Loops ===");

            // For loop
            Console.Write("Counting with for loop: ");
            for (int i = 1; i < 5; i++)
            {
                Console.Write($"{i} ");
            }
            Console.WriteLine();

            // While loop
            Console.Write("Counting with while loop: ");
            int count = 1;
            while (count < 5)
            {
                Console.Write($"{count} ");
                count++;
            }
            Console.WriteLine();
        }
    }
}
