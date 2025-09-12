// Function parameters and return values must have explicit types.
fn calculate_square(number: i32) -> i32 {
    // The last expression in a function without a semicolon is the return value.
    number * number
}

// Rust doesn't have default parameters. The idiomatic way to handle
// optional values is with the `Option` enum.
fn greet(name: &str, greeting: Option<&str>) -> String {
    // Use `unwrap_or` to provide a default value if the Option is `None`.
    let prefix = greeting.unwrap_or("Hello");
    format!("{}, {}!", prefix, name)
}

pub fn demonstrate_functions() {
    println!("\n=== Functions ===");

    println!("Square of 5 is: {}", calculate_square(5));

    // Call greet with no optional parameter (pass `None`).
    println!("{}", greet("Yusran", None));

    // Call greet with the optional parameter (pass `Some(...)`).
    println!("{}", greet("Firmansyah", Some("Hi")));
}
