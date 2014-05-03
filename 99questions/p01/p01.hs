--find the  last element of a list
module Main where

myLast :: [a] -> a
myLast [x] = x
myLast (_:xs) = myLast xs

main = print testPasses
	where
		testPasses = 4 == myLast[1,2,3,4]

