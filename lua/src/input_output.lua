-- Module for demonstrating input and output operations in Lua
local M = {}

function M.demonstrate_io()
    print("=== Input and Output ===")
    
    -- Basic print output
    print("Basic print:", "Hello", "World", 123)
    
    -- String formatting with string.format
    local name = "Alice"
    local age = 25
    print(string.format("Formatted string: Name = %s, Age = %d", name, age))
    
    -- Writing to standard output with io.write
    io.write("This is written using io.write (no automatic newline)\n")
    
    -- String concatenation with ..
    print("String " .. "concatenation " .. "with .. operator")
    
    -- Reading input from console (commented out for non-interactive demos)
    --[[
    io.write("Enter your name: ")
    local user_name = io.read()
    print("Hello, " .. user_name)
    
    io.write("Enter your age: ")
    local user_age = tonumber(io.read())
    if user_age then
        print("In 10 years, you'll be " .. (user_age + 10))
    end
    --]]
    
    -- File operations
    -- Writing to a file
    local file = io.open("test.txt", "w")
    if file then
        file:write("Line 1\n")
        file:write("Line 2\n")
        file:write("Line 3\n")
        file:close()
    end
    
    -- Reading from a file
    print("\nReading from file:")
    file = io.open("test.txt", "r")
    if file then
        for line in file:lines() do
            print(line)
        end
        file:close()
    end
    
    -- Clean up
    os.remove("test.txt")
    
    print() -- Empty line
end

return M