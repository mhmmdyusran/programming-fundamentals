def demonstrate_functions():
    print("\n=== Functions ===")
    def calculate_square(number):
        """Calculate the square of a number."""
        return number * number

    def greet(name, greeting="Hello"):
        """Greet a person with a customizable greeting."""
        return f"{greeting}, {name}!"

    # Using the functions
    print(f"Square of 5 is: {calculate_square(5)}")
    print(greet("Yusran"))
    print(greet("Firmansyah", greeting="Hi"))

if __name__ == "__main__":
    demonstrate_functions()
