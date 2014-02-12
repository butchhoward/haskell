
-- Requires cabal install Gamma
-- note, does not seem to work
import Math.Gamma

-- Type annotation (optional)
factorial :: Integer -> Integer
 
-- Point-free style analytic solution
factorial = round . exp . lnGamma . fromIntegral . (+1)