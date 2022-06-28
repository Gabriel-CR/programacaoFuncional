min3 a b c
    | aMenor = a
    | bMenor = b
    | cMenor = c
    | otherwise = a
    where
        aMenor = a < b && a < c
        bMenor = a > b && b < c
        cMenor = a > c && b > c

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    print $ min3 a b c