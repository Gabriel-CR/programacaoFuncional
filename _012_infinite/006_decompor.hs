toList :: Integral a => a -> [a]
toList n
    | n < 10 = [n]
    | otherwise = toList (n `div` 10) ++ [n `mod` 10]

separa x = toList $ head x

main :: IO ()
main = do
    a <- readLn :: IO [Int]
    print $ separa a