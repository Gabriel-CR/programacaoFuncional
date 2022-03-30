min2 a b
    | a > b = b
    | a < b = a
    | otherwise = a
    
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ min2 a b