

getLines :: String -> [String]
getLines s = lines s


getLinesIO :: IO String -> IO [String]
getLinesIO sio = do
	s <- sio
	IO lines s