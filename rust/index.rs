// Declare the 'concepts' module, which corresponds to the `src/concepts` directory.
mod concepts;

// The main entry point for the program.
fn main() {
    // Call each demonstration function from their respective modules.
    concepts::variables::demonstrate_variables();
    concepts::operators::demonstrate_operators();
    concepts::conditionals::demonstrate_conditionals();
    concepts::loops::demonstrate_loops();
    concepts::arrays::demonstrate_arrays();
    concepts::functions::demonstrate_functions();
    concepts::input_output::demonstrate_io();

    println!("\nAll Rust demonstrations completed successfully.");
}
