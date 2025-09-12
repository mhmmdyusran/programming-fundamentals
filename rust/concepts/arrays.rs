pub fn demonstrate_arrays() {
    println!("\n=== Arrays & Vectors ===");

    // An array has a fixed size, defined at compile time.
    let fixed_size_array: [&str; 3] = ["apple", "banana", "orange"];
    println!("Fixed-size array: {:?}", fixed_size_array);

    // A Vector is a growable, heap-allocated list, similar to a JS array or Go slice.
    let fruits_vec = vec!["apple", "banana", "orange", "grape"];
    println!("Vector (growable): {:?}", fruits_vec);

    // Access the first element.
    println!("First fruit of vector: {}", fruits_vec[0]);

    // Access the last element using the `.len()` method.
    // We subtract 1 because indices are 0-based.
    println!("Last fruit of vector: {}", fruits_vec[fruits_vec.len() - 1]);
}
