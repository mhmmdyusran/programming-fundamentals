pub fn demonstrate_conditionals() {
    println!("\n=== Conditional Statements ===");
    let number = 15;

    // `if-else` conditions do not need parentheses in Rust.
    if number > 0 {
        println!("{} is positive", number);
    } else if number < 0 {
        println!("{} is negative", number);
    } else {
        println!("The number is zero");
    }
}
