-- Module for demonstrating conditionals in Lua
local M = {}

function M.demonstrate_conditionals()
    print("=== Conditionals ===")
    
    -- Simple if statement
    local number = 10
    print("number =", number)
    
    if number > 0 then
        print("The number is positive")
    end
    
    -- if-else statement
    local x = 5
    print("\nx =", x)
    if x > 10 then
        print("x is greater than 10")
    else
        print("x is less than or equal to 10")
    end
    
    -- if-elseif-else statement
    local grade = 85
    print("\ngrade =", grade)
    if grade >= 90 then
        print("Grade A")
    elseif grade >= 80 then
        print("Grade B")
    elseif grade >= 70 then
        print("Grade C")
    else
        print("Grade F")
    end
    
    -- Nested if statements
    local a = 15
    local b = 10
    print("\na =", a, ", b =", b)
    if a > 10 then
        if b > 5 then
            print("Both a and b are above their thresholds")
        end
    end
    
    -- Using and/or for conditional expressions
    local name = "Alice"
    local age = 20
    print("\nname =", name, ", age =", age)
    
    -- Using and
    local can_vote = age >= 18 and "Yes" or "No"
    print("Can vote?", can_vote)
    
    -- Using or for default values
    local user_name = nil
    local display_name = user_name or "Anonymous"
    print("Display name:", display_name)
    
    -- Multiple conditions
    local hour = 14
    print("\nhour =", hour)
    local greeting = hour < 12 and "Good morning" or
                    hour < 18 and "Good afternoon" or
                    "Good evening"
    print("Greeting:", greeting)
    
    print() -- Empty line
end

return M