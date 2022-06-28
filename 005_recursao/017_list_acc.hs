listAcc [] = []
listAcc xs = listAcc (init xs) ++ [sum xs]

main = do
    a <- readLn :: IO [Int]
    print $ listAcc a