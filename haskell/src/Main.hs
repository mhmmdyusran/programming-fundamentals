module Main where

import Variables (demonstrateVariables)
import InputOutput (demonstrateIO)
import Operators (demonstrateOperators)
import Conditionals (demonstrateConditionals)
import Loops (demonstrateLoops)
import Arrays (demonstrateArrays)
import Functions (demonstrateFunctions)
import System.IO (hFlush, stdout)

main :: IO ()
main = do
    putStrLn "Programming Fundamentals in Haskell"
    putStrLn "=================================="
    putStrLn ""
    
    -- Helper function to wait for user input
    let waitForInput = do
        putStr "\nPress Enter to continue..."
        hFlush stdout
        _ <- getLine
        putStrLn ""
    
    -- Run all demonstrations
    demonstrateVariables
    waitForInput
    
    demonstrateIO
    waitForInput
    
    demonstrateOperators
    waitForInput
    
    demonstrateConditionals
    waitForInput
    
    demonstrateLoops
    waitForInput
    
    demonstrateArrays
    waitForInput
    
    demonstrateFunctions
    
    putStrLn "\nAll demonstrations completed."