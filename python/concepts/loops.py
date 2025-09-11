def demonstrate_loops():
    print("\n=== Loops ===")
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

if __name__ == "__main__":
    demonstrate_loops()
