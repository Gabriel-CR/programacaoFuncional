maioresQue a = filter (>a)

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ maioresQue a b