maior [x] = x
maior (x:xs)
    | x > maximoTail = x
    | otherwise = maximoTail
    where
        maximoTail = maior xs

main = do
    a <- readLn :: IO [Int]
    print $ maior a