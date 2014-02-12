
-- Type annotation (optional)
factorial :: Integer -> Integer
 
-- Point-free style
factorial = foldr (*) 1 . enumFromTo 1
 
---- Point-free style analytic solution
--import Math.Gamma
--factorial = round . exp . lnGamma . fromIntegral . (+1)