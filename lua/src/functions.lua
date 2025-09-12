-- Module for demonstrating functions in Lua
local M = {}

function M.demonstrate_functions()
    print("=== Functions ===")
    
    -- Simple function
    local function add(a, b)
        return a + b
    end
    print("Simple function add(2, 3):", add(2, 3))
    
    -- Function with multiple returns
    local function divide_with_remainder(a, b)
        return a // b, a % b
    end
    local quotient, remainder = divide_with_remainder(17, 5)
    print(string.format("\nDivide with remainder (17/5):\nQuotient: %d\nRemainder: %d",
        quotient, remainder))
    
    -- Variable number of arguments
    local function sum(...)
        local result = 0
        for _, value in ipairs({...}) do
            result = result + value
        end
        return result
    end
    print("\nSum of variable arguments:", sum(1, 2, 3, 4, 5))
    
    -- Anonymous function
    local multiply = function(x, y)
        return x * y
    end
    print("\nAnonymous function multiply(6, 7):", multiply(6, 7))
    
    -- Closure
    local function counter()
        local count = 0
        return function()
            count = count + 1
            return count
        end
    end
    local next_number = counter()
    print("\nClosure example:")
    print("First call:", next_number())
    print("Second call:", next_number())
    print("Third call:", next_number())
    
    -- Function with default arguments
    local function greet(name, greeting)
        greeting = greeting or "Hello"
        return greeting .. ", " .. name .. "!"
    end
    print("\nFunction with default argument:")
    print(greet("Alice"))
    print(greet("Bob", "Hi"))
    
    -- Recursive function
    local function factorial(n)
        if n <= 1 then return 1 end
        return n * factorial(n - 1)
    end
    print("\nFactorial of 5:", factorial(5))
    
    -- Higher-order function
    local function apply_twice(func, value)
        return func(func(value))
    end
    local function double(x)
        return x * 2
    end
    print("\nApply double function twice to 5:", apply_twice(double, 5))
    
    -- Method-like function with colon syntax
    local object = {
        value = 10,
        increment = function(self, amount)
            self.value = self.value + amount
            return self.value
        end
    }
    print("\nMethod-like function:")
    print("Initial value:", object.value)
    print("After increment:", object:increment(5))
    
    print() -- Empty line
end

return M