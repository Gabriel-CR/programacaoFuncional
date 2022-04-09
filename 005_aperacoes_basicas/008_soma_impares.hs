somaImpares xs = sum [x | x <- xs, mod x 2 == 1]

main = do
    a <- readLn :: IO [Int]
    print $ somaImpares a