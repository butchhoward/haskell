module Main where

howManyLightSabersDoYouOwn :: a -> c
howManyLightSabersDoYouOwn "Zach" = 18
howManyLightSabersDoYouOwn _ = 0

main = do
     if 18 == howManyLightSabersDoYouOwn "Zach"
     	      then putStrLn "pass"
	      else putStrLn "fail"