maior [] = 0
maior (x:xs) = if x > maior xs then x else maior xs

removerMaior xs = [x | x <- xs, x < maior xs]

main = do
    a <- readLn :: IO [Int]
    print $ removerMaior a