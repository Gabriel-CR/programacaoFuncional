swap xs a b = if (a <= length xs) && (b <= length xs) then fn else xs
    where fn = take a xs ++ [b'] ++ centro ++ [a'] ++ drop (b + 1) xs
          a' = xs !! a
          b' = xs !! b
          centro = take (b - a - 1) (drop (a + 1) xs)

main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    print $ swap a b c