
-- Type annotation (optional)
factorial :: Integer -> Integer
 
-- Using fold (implements product)
factorial n = foldl1 (*) [1..n]
