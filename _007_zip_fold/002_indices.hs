indices n xs = [x | (x, y) <- xs', y == n]
    where xs' = fn xs
          fn = zip [0..]

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ indices a b