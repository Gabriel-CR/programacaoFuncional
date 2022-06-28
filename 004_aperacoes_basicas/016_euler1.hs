euler1 a = sum lista
    where
        lista = [x | x <- [1..a'], x `mod` 3 == 0 || x `mod` 5 == 0]
        a' = a - 1

main = do
    print $ euler1 3 == 0
    print $ euler1 4 == 3
    print $ euler1 5 == 3
    print $ euler1 6 == 8
    print $ euler1 10 == 23
    print $ euler1 1000 == 233168