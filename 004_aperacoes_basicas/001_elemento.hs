elemento ind xs = xs !! i
    where
        i = if ind < 0 then length xs + ind else ind

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ elemento a b    