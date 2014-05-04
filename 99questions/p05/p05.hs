--Reverse a list
module Main where

myReverse :: [a] -> [a]
myReverse [x] = [x]
myReverse (x:xs) = myReverse xs ++ [x]

myReverse' :: [a] -> [a]
myReverse' xs = reverse xs

main = do
	if [1] == myReverse [1]
		then putStrLn "pass"
		else putStrLn "fail"
	if [4,3,2,1] == myReverse [1,2,3,4]
		then putStrLn "pass"
		else putStrLn "fail"
	if "!amanap ,lanac a ,nalp a ,nam A" == myReverse "A man, a plan, a canal, panama!"
		then putStrLn "pass"
		else putStrLn "fail"
	if [5,4,3,2,1] == myReverse' [1,2,3,4,5]
		then putStrLn "pass"
		else putStrLn "fail"