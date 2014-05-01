import System.IO
import System.Process

main = do
  
--main = do
--    (_, Just hout, Just herr, jHandle) <-
--        -- Replace with some other command on Windows
--        createProcess (proc "ls" ["-l", "/Users/"])
--           { cwd = Just "."
--           , std_out = CreatePipe
--           , std_err = CreatePipe 
--           }

--    s <- hGetContents hout
--    let sl = lines s
--    putStrLn $ "The Lines:" ++ show sl
    
--    exitCode <- waitForProcess jHandle
--    putStrLn $ "Exit code: " ++ show exitCode

doCmd :: String -> [String] -> [String]
doCmd :: c, a = do
  (_, Just hout, Just herr, jHandle) <-
    -- Replace with some other command on Windows
    createProcess (proc c a)
       { cwd = Just "."
       , std_out = CreatePipe
       , std_err = CreatePipe 
       }
  s <- hGetContents hout
  let sl = lines s
