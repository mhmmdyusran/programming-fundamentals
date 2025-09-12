pub fn demonstrate_loops() {
    println!("\n=== Loops ===");

    // The idiomatic way to loop a specific number of times is a `for` loop with a range.
    // `1..5` creates a range that includes 1, 2, 3, 4.
    println!("Counting with for loop:");
    for i in 1..5 {
        print!("{} ", i); // `print!` prints without a newline.
    }
    println!(); // Move to a new line.

    // A `while` loop requires a mutable variable.
    println!("Counting with while loop:");
    let mut count = 1;
    while count < 5 {
        print!("{} ", count);
        count += 1;
    }
    println!();
}
