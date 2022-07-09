ehPrimo 1 = True
ehPrimo 2 = True
ehPrimo n
    | even n = False
    | otherwise = null [x | x <- [(n - 1), (n - 2)..3], n `mod` x == 0]

main = do
    a <- readLn :: IO Int
    print $ ehPrimo a