module Conditionals
    ( demonstrateConditionals
    ) where

-- | Function to demonstrate conditionals in Haskell
demonstrateConditionals :: IO ()
demonstrateConditionals = do
    putStrLn "=== Conditionals ==="
    
    -- Simple if-then-else
    let number = 10
    putStrLn $ "number = " ++ show number
    putStrLn $ if number > 0
               then "The number is positive"
               else "The number is non-positive"
    
    -- Multiple if-then-else
    let grade = 85
    putStrLn $ "\ngrade = " ++ show grade
    putStrLn $ if grade >= 90
               then "Grade A"
               else if grade >= 80
                    then "Grade B"
                    else if grade >= 70
                         then "Grade C"
                         else "Grade F"
    
    -- Pattern matching
    putStrLn "\nPattern matching:"
    let dayName 1 = "Sunday"
        dayName 2 = "Monday"
        dayName 3 = "Tuesday"
        dayName 4 = "Wednesday"
        dayName 5 = "Thursday"
        dayName 6 = "Friday"
        dayName 7 = "Saturday"
        dayName _ = "Invalid day"
    
    putStrLn $ "Day 3 is: " ++ dayName 3
    putStrLn $ "Day 8 is: " ++ dayName 8
    
    -- Pattern matching with Maybe
    let safeDiv :: Int -> Int -> Maybe Int
        safeDiv _ 0 = Nothing
        safeDiv x y = Just (x `div` y)
    
    putStrLn "\nSafe division with Maybe:"
    putStrLn $ "10 / 2 = " ++ show (safeDiv 10 2)
    putStrLn $ "10 / 0 = " ++ show (safeDiv 10 0)
    
    -- Guards
    let absoluteValue x
          | x < 0     = -x
          | otherwise = x
    
    putStrLn "\nGuards example:"
    putStrLn $ "Absolute value of -5: " ++ show (absoluteValue (-5))
    putStrLn $ "Absolute value of 5: " ++ show (absoluteValue 5)
    
    -- Case expression
    let fruit = "apple"
    putStrLn "\nCase expression:"
    putStrLn $ case fruit of
        "apple"  -> "This is an apple"
        "banana" -> "This is a banana"
        "orange" -> "This is an orange"
        _        -> "Unknown fruit"
    
    -- Pattern matching on lists
    let describe :: [a] -> String
        describe []  = "Empty list"
        describe [x] = "List with one element"
        describe [x,y] = "List with two elements"
        describe _   = "List with many elements"
    
    putStrLn "\nList pattern matching:"
    putStrLn $ "[] -> " ++ describe []
    putStrLn $ "[1] -> " ++ describe [1]
    putStrLn $ "[1,2] -> " ++ describe [1,2]
    putStrLn $ "[1,2,3] -> " ++ describe [1,2,3]
    
    -- Pattern matching on tuples
    let showPoint :: (Int, Int) -> String
        showPoint (0, 0) = "Origin"
        showPoint (0, y) = "On y-axis at " ++ show y
        showPoint (x, 0) = "On x-axis at " ++ show x
        showPoint (x, y) = "Point at (" ++ show x ++ "," ++ show y ++ ")"
    
    putStrLn "\nTuple pattern matching:"
    putStrLn $ "Point (0,0): " ++ showPoint (0,0)
    putStrLn $ "Point (0,5): " ++ showPoint (0,5)
    putStrLn $ "Point (3,0): " ++ showPoint (3,0)
    putStrLn $ "Point (2,3): " ++ showPoint (2,3)
    
    putStrLn "" -- Empty line