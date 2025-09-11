namespace ProgrammingFundamentals.Concepts
{
    public class Variables
    {
        public static void Demonstrate()
        {
            Console.WriteLine("\n=== Variables and Data Types ===");
            string name = "John Doe";     // String type
            int age = 25;                 // Integer type
            double height = 1.75;         // Double type
            bool isStudent = true;        // Boolean type

            Console.WriteLine($"Name: {name} (Type: {name.GetType()})");
            Console.WriteLine($"Age: {age} (Type: {age.GetType()})");
            Console.WriteLine($"Height: {height} (Type: {height.GetType()})");
            Console.WriteLine($"Is Student: {isStudent} (Type: {isStudent.GetType()})");
        }
    }
}
