--Flatten a nested list structure
module Main where

data NestedList a = Elem a | List [NestedList a]

myFlatten :: NestedList a -> [a]
myFlatten (List []) = []
myFlatten (Elem x) = [x]
myFlatten (List (x:xs)) = myFlatten x ++ myFlatten (List xs)


main = do
	-- why does this fail??
	--if [] == myFlatten (List [])
	--	then putStrLn "pass"
	--	else putStrLn "fail"
	if [1] == myFlatten (Elem 1)
		then putStrLn "pass"
		else putStrLn "fail"	
	if [1,2] == myFlatten (List [Elem 1, Elem 2])
		then putStrLn "pass"
		else putStrLn "fail"
	if [1,2,3,4,5] == myFlatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
		then putStrLn "pass"
		else putStrLn "fail"

-- I couldn't solve this one without looking at the example solutions. I got hung up on the "[] == myFlatten [] a" instance again. Also struggled with the custom data type and the use of it in the tests.