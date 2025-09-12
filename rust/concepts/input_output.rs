use std::io; // Bring the standard input/output library into scope.

pub fn demonstrate_io() {
    println!("\n=== Input and Output ===");

    println!("Enter your name: ");

    // Create a mutable String to store the user input.
    let mut user_input = String::new();

    // Read a line from standard input.
    // This returns a `Result` type which we must handle.
    // `.expect()` is a simple way to handle errors that will cause the program
    // to crash (panic) if an error occurs.
    io::stdin()
        .read_line(&mut user_input)
        .expect("Failed to read line");

    // The input contains a newline character, so we trim it.
    let name = user_input.trim();

    println!("Hello, {}!", name);
}
