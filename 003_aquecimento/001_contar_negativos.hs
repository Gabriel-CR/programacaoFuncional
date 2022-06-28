countNeg [] = 0
countNeg (x:xs)
    | x < 0 = 1 + countNeg xs
    | otherwise = countNeg xs

main = do
    a <- readLn :: IO [Int]
    print $ countNeg a