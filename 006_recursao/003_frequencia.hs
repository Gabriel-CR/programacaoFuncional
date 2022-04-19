frequencia _ [] = 0
frequencia a xs = if a == head xs then 1 + resto else resto
    where
        resto = frequencia a (tail xs)

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ frequencia a b