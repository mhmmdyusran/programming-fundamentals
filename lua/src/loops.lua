-- Module for demonstrating loops in Lua
local M = {}

function M.demonstrate_loops()
    print("=== Loops ===")
    
    -- Numeric for loop
    print("Numeric for loop:")
    for i = 1, 5 do
        io.write(i, " ")
    end
    print()
    
    -- Numeric for loop with step
    print("\nNumeric for loop with step of 2:")
    for i = 0, 10, 2 do
        io.write(i, " ")
    end
    print()
    
    -- Generic for loop with ipairs (array-like iteration)
    print("\nGeneric for loop with ipairs:")
    local fruits = {"apple", "banana", "orange"}
    for i, fruit in ipairs(fruits) do
        print(i, fruit)
    end
    
    -- Generic for loop with pairs (table iteration)
    print("\nGeneric for loop with pairs:")
    local person = {
        name = "Alice",
        age = 25,
        city = "Wonderland"
    }
    for key, value in pairs(person) do
        print(key, value)
    end
    
    -- While loop
    print("\nWhile loop:")
    local counter = 1
    while counter <= 5 do
        print("Counter:", counter)
        counter = counter + 1
    end
    
    -- Repeat-until loop
    print("\nRepeat-until loop:")
    local x = 1
    repeat
        print("x:", x)
        x = x + 1
    until x > 5
    
    -- Breaking out of loops
    print("\nLoop with break:")
    for i = 1, 10 do
        if i > 5 then
            break
        end
        io.write(i, " ")
    end
    print()
    
    -- Using goto for complex flow control
    print("\nUsing goto:")
    local count = 1
    ::continue::
    if count <= 3 then
        print("Count:", count)
        count = count + 1
        goto continue
    end
    
    print() -- Empty line
end

return M