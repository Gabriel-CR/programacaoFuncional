maior [x] = x
maior (x:xs) = if x > maior xs then x else maior xs

main = do
    a <- readLn :: IO [Int]
    print $ maior a