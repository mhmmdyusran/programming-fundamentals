module Variables
    ( demonstrateVariables
    ) where

-- | Function to demonstrate various variable types in Haskell
demonstrateVariables :: IO ()
demonstrateVariables = do
    putStrLn "=== Variables ==="
    
    -- Basic types
    let integerVar = 42 :: Integer
        doubleVar = 3.14159 :: Double
        floatVar = 2.718 :: Float
        charVar = 'A' :: Char
        stringVar = "Hello, World!" :: String
        boolVar = True :: Bool
    
    putStrLn $ "Integer: " ++ show integerVar
    putStrLn $ "Double: " ++ show doubleVar
    putStrLn $ "Float: " ++ show floatVar
    putStrLn $ "Char: " ++ show charVar
    putStrLn $ "String: " ++ stringVar
    putStrLn $ "Boolean: " ++ show boolVar
    
    -- Tuples
    let point2D = (10, 20) :: (Int, Int)
        point3D = (1, 2, 3) :: (Int, Int, Int)
        person = ("Alice", 25) :: (String, Int)
    
    putStrLn "\nTuples:"
    putStrLn $ "2D Point: " ++ show point2D
    putStrLn $ "3D Point: " ++ show point3D
    putStrLn $ "Person: " ++ show person
    
    -- Lists
    let numbers = [1..5] :: [Int]
        words' = ["apple", "banana", "orange"] :: [String]
        chars = ['a'..'e'] :: [Char]
    
    putStrLn "\nLists:"
    putStrLn $ "Numbers: " ++ show numbers
    putStrLn $ "Words: " ++ show words'
    putStrLn $ "Characters: " ++ show chars
    
    -- Maybe type
    let justValue = Just 42 :: Maybe Int
        nothingValue = Nothing :: Maybe Int
    
    putStrLn "\nMaybe types:"
    putStrLn $ "Just value: " ++ show justValue
    putStrLn $ "Nothing value: " ++ show nothingValue
    
    -- Custom data type
    data Color = Red | Green | Blue deriving Show
    let color = Blue :: Color
    
    putStrLn "\nCustom type:"
    putStrLn $ "Color: " ++ show color
    
    -- Type aliases
    type Age = Int
    type Name = String
    let age = 25 :: Age
        name = "Bob" :: Name
    
    putStrLn "\nType aliases:"
    putStrLn $ "Name: " ++ name
    putStrLn $ "Age: " ++ show age
    
    putStrLn "" -- Empty line