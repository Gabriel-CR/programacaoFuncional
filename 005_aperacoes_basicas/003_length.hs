total [] = 0
total (_:xs) = 1 + total xs

main = do
    a <- readLn :: IO [Int]
    print $ total a