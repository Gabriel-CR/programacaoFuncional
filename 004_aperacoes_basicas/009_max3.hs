max' x y = if x > y then x else y
max3 a b c = max' a $ max' b c

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    print $ max3 a b c