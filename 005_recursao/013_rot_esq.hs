rotEsq 0 xs = xs
rotEsq n xs = rotEsq (n - 1) $ tail xs ++ [head xs]

main = do
    a <- readLn :: IO Int
    b <- getLine
    print $ rotEsq a b