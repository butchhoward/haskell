
-- Type annotation (optional)
factorial :: Integer -> Integer
 
-- Using recursion but written without pattern matching
factorial n = if n > 0 then n * factorial (n-1) else 1
 
---- Using a list
---- factorial n = product [1..n]
 
---- Using fold (implements product)
---- factorial n = foldl1 (*) [1..n]
 
-- Point-free style
-- factorial = foldr (*) 1 . enumFromTo 1
 
---- Point-free style analytic solution
--import Math.Gamma
--factorial = round . exp . lnGamma . fromIntegral . (+1)