-- Module for demonstrating variables in Lua
local M = {}

function M.demonstrate_variables()
    print("=== Variables ===")
    
    -- Nil (undefined) value
    local undefined_var = nil
    print("Nil value:", undefined_var)
    
    -- Numbers (all numbers in Lua are double precision floating point)
    local integer = 42
    local float = 3.14159
    print("Integer:", integer)
    print("Float:", float)
    
    -- Strings (can use single or double quotes)
    local single_quoted = 'Hello'
    local double_quoted = "World"
    print("String concatenation:", single_quoted .. " " .. double_quoted)
    
    -- Multi-line string using [[]]
    local multi_line = [[
    This is a multi-line
    string in Lua.
    It preserves all whitespace.
    ]]
    print("Multi-line string:", multi_line)
    
    -- Booleans
    local is_true = true
    local is_false = false
    print("Boolean values:", is_true, is_false)
    
    -- Tables (can be used as arrays and dictionaries)
    local array = {1, 2, 3, 4, 5}
    print("Array-like table:", table.concat(array, ", "))
    
    local dict = {
        name = "Alice",
        age = 25,
        city = "Wonderland"
    }
    print("Dictionary-like table:")
    for key, value in pairs(dict) do
        print("  " .. key .. ":", value)
    end
    
    -- Functions can be stored in variables
    local greeting = function(name)
        return "Hello, " .. name
    end
    print("Function call:", greeting("Lua"))
    
    print() -- Empty line
end

return M