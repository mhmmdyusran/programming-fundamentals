// `pub` makes this function public and callable from other modules.
pub fn demonstrate_variables() {
    println!("\n=== Variables and Data Types ===");

    // Variables in Rust are immutable by default.
    let name = "John Doe"; // Type is inferred as &str (string slice)

    // Use `mut` to make a variable mutable.
    let mut age: i32 = 25; // Explicit type annotation: 32-bit signed integer
    age += 1;

    let height: f64 = 1.75; // 64-bit floating-point number
    let is_student: bool = true;

    // Rust is statically typed, so types are known at compile time.
    // We state the type directly in the print statement.
    println!("Name: {} (Type: &str)", name);
    println!("Age: {} (Type: i32)", age);
    println!("Height: {} (Type: f64)", height);
    println!("Is Student: {} (Type: bool)", is_student);
}
