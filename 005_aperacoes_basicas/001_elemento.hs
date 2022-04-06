elemento 0 xs = head xs
elemento ind (x:xs)
    | length xs < ind = elemento (ind - length xs - 1) xs
    | ind < 0 = elemento (length xs + ind) xs
    | otherwise = elemento (ind - 1) xs 

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ elemento a b