# 1. Variables and Data Types
print("\n")
name = "John Doe"  # String type
age = 25       # Integer type
height = 1.75  # Float type
is_student = True  # Boolean type

print(f"Name: {name} ({type(name)})")
print(f"Age: {age} ({type(age)})")
print(f"Height: {height} ({type(height)})")
print(f"Is Student: {is_student} ({type(is_student)})")

# 2. Input and Output (I/O)
print("\n")
user_input = input("Enter your name: ")
print(f"Hello, {user_input}!")

# 3. Operators
print("\n")
a = 10
b = 3

# Arithmetic operators
print(f"Addition: {a + b}")
print(f"Subtraction: {a - b}")
print(f"Multiplication: {a * b}")
print(f"Division: {a / b}")

# Comparison operators
print(f"Is a > b? {a > b}")
print(f"Is a == b? {a == b}")

# 4. Conditional Statements
print("\n")
number = 15

if number > 0:
    print(f"{number} is positive")
elif number < 0:
    print(f"{number} is negative")
else:
    print("The number is zero")

# 5. Loops
print("\n")
# For loop
print("Counting with for loop:")
for i in range(1, 5):
    print(i, end=" ")
print()

# While loop
print("Counting with while loop:")
count = 1
while count < 5:
    print(count, end=" ")
    count += 1
print()

# 6. Arrays (Lists in Python)
print("\n")
fruits = ["apple", "banana", "orange", "grape"]
print("List of fruits:", fruits)
print("First fruit:", fruits[0])
print("Last fruit:", fruits[-1])

# 7. Functions
print("\n")
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