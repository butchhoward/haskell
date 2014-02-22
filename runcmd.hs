import System.IO
import System.Process

main = do
    (_, Just hout, Just herr, jHandle) <-
        -- Replace with some other command on Windows
        createProcess (proc "ls" ["-l", "/Users/"])
           { cwd = Just "."
           , std_out = CreatePipe
           , std_err = CreatePipe 
           }

    putStrLn "First line of stdout:"
    hGetLine hout >>= putStrLn

    exitCode <- waitForProcess jHandle
    putStrLn $ "Exit code: " ++ show exitCode