concatena [] [] = []
concatena xs ys = foldr (:) ys xs

main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ concatena a b