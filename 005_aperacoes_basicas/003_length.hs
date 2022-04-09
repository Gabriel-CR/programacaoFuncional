total xs = sum [1 | x <- xs]

main = do
    a <- readLn :: IO [Int]
    print $ total a