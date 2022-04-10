sublist i f xs = drop inicio $ take fim xs
    where
        inicio = if i < 0 then i + length xs else i
        fim = if f < 0 then f + length xs else f

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO [Int]
    print $ sublist a b c