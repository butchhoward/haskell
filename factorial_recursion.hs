
-- Type annotation (optional)
factorial :: Integer -> Integer
 
-- Using recursion but written without pattern matching
factorial n = if n > 0 then n * factorial (n-1) else 1