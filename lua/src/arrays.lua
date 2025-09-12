-- Module for demonstrating arrays and tables in Lua
local M = {}

function M.demonstrate_arrays()
    print("=== Arrays and Tables ===")
    
    -- Simple array (1-based indexing in Lua)
    print("Simple array:")
    local numbers = {1, 2, 3, 4, 5}
    for i = 1, #numbers do
        print(string.format("numbers[%d] = %d", i, numbers[i]))
    end
    
    -- Array operations
    print("\nArray operations:")
    table.insert(numbers, 6)  -- Add to end
    print("After insert(6):", table.concat(numbers, ", "))
    
    table.remove(numbers)     -- Remove from end
    print("After remove:", table.concat(numbers, ", "))
    
    table.insert(numbers, 2, 10)  -- Insert at position 2
    print("After insert(2, 10):", table.concat(numbers, ", "))
    
    -- Table as dictionary
    print("\nTable as dictionary:")
    local person = {
        name = "Alice",
        age = 25,
        city = "Wonderland"
    }
    for key, value in pairs(person) do
        print(string.format("%s = %s", key, value))
    end
    
    -- Nested tables
    print("\nNested tables:")
    local matrix = {
        {1, 2, 3},
        {4, 5, 6},
        {7, 8, 9}
    }
    for i = 1, #matrix do
        print(string.format("Row %d: %s", i, table.concat(matrix[i], ", ")))
    end
    
    -- Mixed table
    print("\nMixed table:")
    local mixed = {
        10,
        20,
        name = "Bob",
        [true] = "boolean key",
        ["key"] = "string key"
    }
    print("Numeric indexes:")
    for i = 1, #mixed do
        print(string.format("[%d] = %s", i, mixed[i]))
    end
    print("Other keys:")
    print("name =", mixed.name)
    print("[true] =", mixed[true])
    print('["key"] =', mixed["key"])
    
    -- Table methods
    print("\nTable methods:")
    local fruits = {"banana", "apple", "orange", "grape"}
    print("Original:", table.concat(fruits, ", "))
    table.sort(fruits)
    print("Sorted:", table.concat(fruits, ", "))
    
    -- Creating a 2D array
    print("\n2D array with 3x3 zero matrix:")
    local matrix2d = {}
    for i = 1, 3 do
        matrix2d[i] = {}
        for j = 1, 3 do
            matrix2d[i][j] = 0
        end
    end
    for i = 1, 3 do
        print(table.concat(matrix2d[i], " "))
    end
    
    print() -- Empty line
end

return M