
-- Type annotation (optional)
factorial :: Integer -> Integer
 
-- Point-free style
factorial = foldr (*) 1 . enumFromTo 1
