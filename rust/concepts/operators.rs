pub fn demonstrate_operators() {
    println!("\n=== Operators ===");
    let a = 10; // Inferred as i32
    let b = 3;  // Inferred as i32

    // Arithmetic Operators
    println!("Arithmetic Operators");
    println!("Addition: {}", a + b);
    println!("Subtraction: {}", a - b);
    println!("Multiplication: {}", a * b);

    // Integer division truncates the result.
    println!("Integer Division: {}", a / b);

    // To get a float result, we must cast the types.
    println!("Float Division: {}", a as f64 / b as f64);

    // Comparison Operators
    println!("\nComparison Operators");
    println!("Is a > b? {}", a > b);
    println!("Is a == b? {}", a == b);
}
