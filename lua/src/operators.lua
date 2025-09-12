-- Module for demonstrating operators in Lua
local M = {}

function M.demonstrate_operators()
    print("=== Operators ===")
    
    -- Arithmetic operators
    print("Arithmetic Operators:")
    local a = 10
    local b = 3
    
    print("a =", a, ", b =", b)
    print("Addition (a + b):", a + b)
    print("Subtraction (a - b):", a - b)
    print("Multiplication (a * b):", a * b)
    print("Division (a / b):", a / b)
    print("Floor Division (a // b):", a // b)  -- Lua 5.3+
    print("Modulus (a % b):", a % b)
    print("Exponentiation (a ^ b):", a ^ b)
    print("Unary minus (-a):", -a)
    
    -- Relational operators
    print("\nRelational Operators:")
    print("Equal (a == b):", a == b)
    print("Not Equal (a ~= b):", a ~= b)
    print("Greater Than (a > b):", a > b)
    print("Less Than (a < b):", a < b)
    print("Greater or Equal (a >= b):", a >= b)
    print("Less or Equal (a <= b):", a <= b)
    
    -- Logical operators
    print("\nLogical Operators:")
    local t = true
    local f = false
    
    print("AND (true and false):", t and f)
    print("OR (true or false):", t or f)
    print("NOT (not true):", not t)
    
    -- String concatenation
    print("\nString Concatenation:")
    local str1 = "Hello"
    local str2 = "World"
    print("str1 .. ' ' .. str2:", str1 .. " " .. str2)
    
    -- Length operator
    print("\nLength Operator:")
    local text = "Hello"
    local table = {1, 2, 3, 4, 5}
    print("Length of string:", #text)
    print("Length of table:", #table)
    
    -- Short-circuit evaluation
    print("\nShort-circuit Evaluation:")
    print("true or print('not executed'):", true or print('not executed'))
    print("false and print('not executed'):", false and print('not executed'))
    
    print() -- Empty line
end

return M