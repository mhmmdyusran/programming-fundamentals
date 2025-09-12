module Arrays
    ( demonstrateArrays
    ) where

import Data.Array
import qualified Data.Map as Map
import qualified Data.Set as Set

-- | Function to demonstrate arrays and other data structures in Haskell
demonstrateArrays :: IO ()
demonstrateArrays = do
    putStrLn "=== Arrays and Data Structures ==="
    
    -- Lists (Haskell's primary sequence type)
    putStrLn "Lists:"
    let numbers = [1..5]
        strings = ["apple", "banana", "cherry"]
    putStrLn $ "Numbers: " ++ show numbers
    putStrLn $ "Strings: " ++ show strings
    
    -- List operations
    putStrLn "\nList operations:"
    putStrLn $ "Head: " ++ show (head numbers)
    putStrLn $ "Tail: " ++ show (tail numbers)
    putStrLn $ "Init: " ++ show (init numbers)
    putStrLn $ "Last: " ++ show (last numbers)
    
    -- List manipulation
    putStrLn "\nList manipulation:"
    let list1 = [1,2,3]
        list2 = [4,5,6]
    putStrLn $ "Concatenation: " ++ show (list1 ++ list2)
    putStrLn $ "Cons operator: " ++ show (0:list1)
    putStrLn $ "Take 2: " ++ show (take 2 list1)
    putStrLn $ "Drop 2: " ++ show (drop 2 list1)
    
    -- Arrays (fixed-size, constant-time access)
    putStrLn "\nArrays:"
    let arr = array (1,5) [(i,i*2) | i <- [1..5]] :: Array Int Int
    putStrLn $ "Array: " ++ show arr
    putStrLn $ "Array bounds: " ++ show (bounds arr)
    putStrLn $ "Element at index 3: " ++ show (arr ! 3)
    putStrLn $ "Array elements: " ++ show (elems arr)
    putStrLn $ "Array indices: " ++ show (indices arr)
    
    -- 2D Array
    putStrLn "\n2D Array:"
    let matrix = array ((1,1),(2,2))
                      [((i,j), i+j) | i <- [1..2], j <- [1..2]]
                      :: Array (Int,Int) Int
    putStrLn $ "Matrix: " ++ show matrix
    putStrLn $ "Element at (2,2): " ++ show (matrix ! (2,2))
    
    -- Sets
    putStrLn "\nSets:"
    let set1 = Set.fromList [1,2,3,2,1] :: Set.Set Int
        set2 = Set.fromList [3,4,5] :: Set.Set Int
    putStrLn $ "Set1: " ++ show set1
    putStrLn $ "Set2: " ++ show set2
    putStrLn $ "Union: " ++ show (Set.union set1 set2)
    putStrLn $ "Intersection: " ++ show (Set.intersection set1 set2)
    putStrLn $ "Difference: " ++ show (Set.difference set1 set2)
    
    -- Maps (key-value pairs)
    putStrLn "\nMaps:"
    let map1 = Map.fromList [(1,"one"), (2,"two"), (3,"three")] :: Map.Map Int String
    putStrLn $ "Map: " ++ show map1
    putStrLn $ "Keys: " ++ show (Map.keys map1)
    putStrLn $ "Values: " ++ show (Map.elems map1)
    putStrLn $ "Lookup key 2: " ++ show (Map.lookup 2 map1)
    putStrLn $ "Lookup key 4: " ++ show (Map.lookup 4 map1)
    
    -- Tuples
    putStrLn "\nTuples:"
    let pair = (1, "one") :: (Int, String)
        triple = (1, "one", True) :: (Int, String, Bool)
    putStrLn $ "Pair: " ++ show pair
    putStrLn $ "Triple: " ++ show triple
    putStrLn $ "First of pair: " ++ show (fst pair)
    putStrLn $ "Second of pair: " ++ show (snd pair)
    
    putStrLn "" -- Empty line