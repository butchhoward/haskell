--find the  last element of a list
module Main where

myLast :: [a] -> a
myLast [x] = x
myLast (_:xs) = myLast xs

main = print d
	where
	d = myLast[1,2,3,4]

