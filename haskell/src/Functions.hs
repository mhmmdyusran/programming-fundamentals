module Functions
    ( demonstrateFunctions
    ) where

import Data.Char (toUpper)

-- | Function to demonstrate various function concepts in Haskell
demonstrateFunctions :: IO ()
demonstrateFunctions = do
    putStrLn "=== Functions ==="
    
    -- Simple function
    putStrLn "Simple function:"
    print $ add 5 3
    
    -- Function with pattern matching
    putStrLn "\nPattern matching:"
    print $ factorial 5
    
    -- Guards
    putStrLn "\nGuards:"
    print $ describe 15
    print $ describe (-5)
    print $ describe 0
    
    -- Lambda functions
    putStrLn "\nLambda functions:"
    let double = \x -> x * 2
    print $ double 5
    
    -- Higher-order functions
    putStrLn "\nHigher-order functions:"
    let numbers = [1..5]
    print $ "Map: " ++ show (map double numbers)
    print $ "Filter: " ++ show (filter even numbers)
    print $ "Fold: " ++ show (foldl (+) 0 numbers)
    
    -- Function composition
    putStrLn "\nFunction composition:"
    let f = (*2)
        g = (+1)
        h = f . g  -- Composition: first g, then f
    print $ "h 5 = " ++ show (h 5)
    
    -- Currying
    putStrLn "\nCurrying:"
    let add5 = add 5  -- Partially applied function
    print $ add5 3
    
    -- Type class constraints
    putStrLn "\nType class constraints:"
    print $ maximum' [1,5,3,2,4]
    print $ maximum' ["apple", "banana", "cherry"]
    
    -- Function with Maybe
    putStrLn "\nMaybe type:"
    print $ safeDiv 10 2
    print $ safeDiv 10 0
    
    -- List processing
    putStrLn "\nList processing:"
    print $ processString "Hello, World!"
    
    -- Multiple parameter lists
    putStrLn "\nMultiple parameter lists:"
    print $ multiplyAndAdd 2 3 4  -- (2 * 3) + 4
    
    -- Point-free style
    putStrLn "\nPoint-free style:"
    print $ sumSquares [1..5]
    
    putStrLn "" -- Empty line

-- Function definitions
add :: Num a => a -> a -> a
add x y = x + y

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

describe :: Int -> String
describe n
    | n > 0     = "Positive"
    | n < 0     = "Negative"
    | otherwise = "Zero"

maximum' :: Ord a => [a] -> a
maximum' [] = error "Empty list"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)

safeDiv :: Int -> Int -> Maybe Int
safeDiv _ 0 = Nothing
safeDiv x y = Just (x `div` y)

processString :: String -> String
processString = map toUpper . filter (/= ' ')

multiplyAndAdd :: Num a => a -> a -> a -> a
multiplyAndAdd x y z = (x * y) + z

sumSquares :: Num a => [a] -> a
sumSquares = sum . map (^2)