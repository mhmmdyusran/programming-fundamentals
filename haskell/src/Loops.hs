module Loops
    ( demonstrateLoops
    ) where

-- | Function to demonstrate loops and recursion in Haskell
demonstrateLoops :: IO ()
demonstrateLoops = do
    putStrLn "=== Loops and Recursion ==="
    
    -- List comprehension (similar to for loops)
    putStrLn "List comprehension:"
    let squares = [x*x | x <- [1..5]]
    print squares
    
    -- Filtered list comprehension
    putStrLn "\nFiltered list comprehension:"
    let evenSquares = [x*x | x <- [1..10], even x]
    print evenSquares
    
    -- Multiple generators
    putStrLn "\nMultiple generators:"
    let pairs = [(x,y) | x <- [1..3], y <- [1..x]]
    print pairs
    
    -- Map (applying function to each element)
    putStrLn "\nMap function:"
    let numbers = [1..5]
        doubled = map (*2) numbers
    putStrLn $ "Original: " ++ show numbers
    putStrLn $ "Doubled: " ++ show doubled
    
    -- Filter (similar to while with condition)
    putStrLn "\nFilter function:"
    let evens = filter even [1..10]
    print evens
    
    -- Fold (reduce/accumulate)
    putStrLn "\nFold functions:"
    let sum' = foldl (+) 0 [1..5]
        product' = foldl (*) 1 [1..5]
    putStrLn $ "Sum: " ++ show sum'
    putStrLn $ "Product: " ++ show product'
    
    -- Recursive function example
    putStrLn "\nRecursive function:"
    print $ "Factorial of 5: " ++ show (factorial 5)
    
    -- Infinite list with take
    putStrLn "\nInfinite list (first 10 elements):"
    print $ take 10 [1..]
    
    -- Recursive list processing
    putStrLn "\nRecursive list processing:"
    let numbers' = [1..5]
    putStrLn $ "Sum using recursion: " ++ show (recursiveSum numbers')
    
    -- List iteration with sequence_
    putStrLn "\nSequential actions:"
    sequence_ [putStr (show x ++ " ") | x <- [1..5]]
    putStrLn ""
    
    -- Recursive IO action
    putStrLn "\nRecursive IO actions:"
    printNumbersTo 5
    
    putStrLn "" -- Empty line

-- Helper recursive functions
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

recursiveSum :: Num a => [a] -> a
recursiveSum [] = 0
recursiveSum (x:xs) = x + recursiveSum xs

printNumbersTo :: Int -> IO ()
printNumbersTo 0 = return ()
printNumbersTo n = do
    printNumbersTo (n-1)
    putStrLn $ "Number: " ++ show n