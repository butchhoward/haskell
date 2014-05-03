--Find the number of elements of a list
module Main where

myLength :: [a] -> Int
myLength [] = 0
myLength [a] = 1
myLength (xs) = 1 + myLength (tail xs)

myLength' :: [a] -> Int
myLength' (xs) = length xs

main = do
	if 0 == myLength ""
		then putStrLn "pass"
		else putStrLn "fail"
	if 1 == myLength "a"
		then putStrLn "pass"
		else putStrLn "fail"
	if 2 == myLength "ab"
		then putStrLn "pass"
		else putStrLn "fail"	
	if 3 == myLength "abc"
		then putStrLn "pass"
		else putStrLn "fail"
	if 13 == myLength "Hello, world!"
		then putStrLn "pass"
		else putStrLn "fail"
	if 13 == myLength' "Hello, world!"
		then putStrLn "pass"
		else putStrLn "fail"
