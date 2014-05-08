--Find out whether a list is a palindrome.
module Main where

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome [] = True
isPalindrome xs =  xs == reverse xs


main = do
	if isPalindrome [1,2,3]
		then putStrLn "fail"
		else putStrLn "pass"
	if isPalindrome [1,2,1]
		then putStrLn "pass"
		else putStrLn "fail"
	if isPalindrome "madamimadam"
		then putStrLn "pass"
		else putStrLn "fail"
	-- Why does this one error out???
	--if isPalindrome []
	--	then putStrLn "pass"
	--	else putStrLn "fail"
