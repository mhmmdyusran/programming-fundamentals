module InputOutput
    ( demonstrateIO
    ) where

import System.IO (hFlush, stdout)

-- | Function to demonstrate input and output operations in Haskell
demonstrateIO :: IO ()
demonstrateIO = do
    putStrLn "=== Input and Output ==="
    
    -- Basic output
    putStrLn "Basic output using putStrLn"
    putStr "Basic output using putStr (no newline)"
    putStrLn ""
    
    -- Print function (shows the value's representation)
    print True
    print [1, 2, 3]
    print (1.5 :: Double)
    
    -- String concatenation in output
    let name = "Alice"
        age = 25
    putStrLn $ "Name: " ++ name ++ ", Age: " ++ show age
    
    -- Basic input (commented out for non-interactive demos)
    {-
    putStr "Enter your name: "
    hFlush stdout  -- Ensure prompt is shown before reading input
    inputName <- getLine
    putStrLn $ "Hello, " ++ inputName ++ "!"
    
    putStr "Enter your age: "
    hFlush stdout
    inputAge <- getLine
    putStrLn $ "In 10 years, you'll be " ++ show (read inputAge + 10) ++ " years old."
    -}
    
    -- File operations (demonstration with a temporary file)
    -- Write to file
    writeFile "test.txt" "Line 1\nLine 2\nLine 3\n"
    
    -- Read from file
    putStrLn "\nReading from file:"
    contents <- readFile "test.txt"
    putStr contents
    
    -- Read file line by line
    putStrLn "Reading file line by line:"
    lines' <- fmap lines (readFile "test.txt")
    mapM_ putStrLn lines'
    
    -- Append to file
    appendFile "test.txt" "Line 4 (appended)\n"
    
    -- Read updated file
    putStrLn "\nReading updated file:"
    newContents <- readFile "test.txt"
    putStr newContents
    
    -- Clean up
    writeFile "test.txt" ""  -- Clear file contents
    
    -- Do/Let notation
    putStrLn "\nDo/Let notation example:"
    let calculation = do
            let x = 5
                y = 7
            return $ x + y
    result <- return calculation
    putStrLn $ "5 + 7 = " ++ show result
    
    putStrLn "" -- Empty line