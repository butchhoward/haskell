-- Find the K'th element of a list. The first element in the list is number 1
module Main where

elementAt :: [a] -> Int -> a
elementAt xs x = xs !! (x - 1)

elementAt' :: [a] -> Int -> a
elementAt' xs x = if length xs == x 
						then last xs 
						else elementAt' (init xs) x

main = do 
		if 2 == elementAt [1,2,3] 2
			then putStrLn "pass"
			else putStrLn "fail"
		if 1 == elementAt [1,2,3] 1
			then putStrLn "pass"
			else putStrLn "fail"
		if 2 == elementAt' [1,2,3] 2
			then putStrLn "pass"
			else putStrLn "fail"
		if 1 == elementAt' [1,2,3] 1
			then putStrLn "pass"
			else putStrLn "fail"
		if 'b' == elementAt ['a','b','c'] 2
			then putStrLn "pass"
			else putStrLn "fail"
		if 'a' == elementAt ['a','b','c'] 1
			then putStrLn "pass"
			else putStrLn "fail"
		if 'e' == elementAt "haskell" 5
			then putStrLn "pass"
			else putStrLn "fail"
		if 'e' == elementAt' "haskell" 5
			then putStrLn "pass"
			else putStrLn "fail"

