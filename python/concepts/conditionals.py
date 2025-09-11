def demonstrate_conditionals():
    print("\n=== Conditional Statements ===")
    number = 15

    if number > 0:
        print(f"{number} is positive")
    elif number < 0:
        print(f"{number} is negative")
    else:
        print("The number is zero")

if __name__ == "__main__":
    demonstrate_conditionals()
