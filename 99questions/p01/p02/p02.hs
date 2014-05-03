--Find the last but one element of a list.

myButLast :: [a] -> a
myButLast [x,y] = x
myButLast (_:xs) = myButLast xs

main =  print testPasses
	where
		testPasses = 3 == myButLast [1,2,3,4]	