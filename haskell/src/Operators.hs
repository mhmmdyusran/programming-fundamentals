module Operators
    ( demonstrateOperators
    ) where

-- | Function to demonstrate operators in Haskell
demonstrateOperators :: IO ()
demonstrateOperators = do
    putStrLn "=== Operators ==="
    
    -- Arithmetic operators
    let a = 10 :: Int
        b = 3 :: Int
    
    putStrLn $ "a = " ++ show a ++ ", b = " ++ show b
    putStrLn $ "Addition (a + b): " ++ show (a + b)
    putStrLn $ "Subtraction (a - b): " ++ show (a - b)
    putStrLn $ "Multiplication (a * b): " ++ show (a * b)
    putStrLn $ "Division (a `div` b): " ++ show (a `div` b)
    putStrLn $ "Modulus (a `mod` b): " ++ show (a `mod` b)
    putStrLn $ "Negation (-a): " ++ show (-a)
    putStrLn $ "Absolute value (abs a): " ++ show (abs a)
    
    -- Floating-point operators
    let x = 10.5 :: Double
        y = 3.2 :: Double
    
    putStrLn "\nFloating-point operations:"
    putStrLn $ "x = " ++ show x ++ ", y = " ++ show y
    putStrLn $ "Division (x / y): " ++ show (x / y)
    putStrLn $ "Power (x ** y): " ++ show (x ** y)
    
    -- Comparison operators
    putStrLn "\nComparison operators:"
    putStrLn $ "Equal (a == b): " ++ show (a == b)
    putStrLn $ "Not equal (a /= b): " ++ show (a /= b)
    putStrLn $ "Greater than (a > b): " ++ show (a > b)
    putStrLn $ "Less than (a < b): " ++ show (a < b)
    putStrLn $ "Greater or equal (a >= b): " ++ show (a >= b)
    putStrLn $ "Less or equal (a <= b): " ++ show (a <= b)
    
    -- Logical operators
    putStrLn "\nLogical operators:"
    putStrLn $ "AND (True && False): " ++ show (True && False)
    putStrLn $ "OR (True || False): " ++ show (True || False)
    putStrLn $ "NOT (not True): " ++ show (not True)
    
    -- Function composition and application
    putStrLn "\nFunction operators:"
    let f x = x * 2
        g x = x + 1
        h = f . g  -- Function composition
    putStrLn $ "Function composition (f . g) 5: " ++ show (h 5)
    putStrLn $ "Function application (f $ g 5): " ++ show (f $ g 5)
    
    -- List operators
    putStrLn "\nList operators:"
    let list1 = [1, 2, 3]
        list2 = [4, 5, 6]
    putStrLn $ "Concatenation (list1 ++ list2): " ++ show (list1 ++ list2)
    putStrLn $ "Cons operator (1 : list1): " ++ show (1 : list1)
    putStrLn $ "List index (list1 !! 1): " ++ show (list1 !! 1)
    
    -- Custom operators
    let (^+^) x y = x * x + y * y  -- Custom infix operator
    putStrLn "\nCustom operator:"
    putStrLn $ "3 ^+^ 4 = " ++ show (3 ^+^ 4)
    
    putStrLn "" -- Empty line