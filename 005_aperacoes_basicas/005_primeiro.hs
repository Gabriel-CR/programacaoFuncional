primeiros [x] = []
primeiros (x:xs) = x : (primeiros xs)

main = do
    a <- readLn :: IO [Int]
    print $ primeiros a