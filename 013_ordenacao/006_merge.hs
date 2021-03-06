merge :: Ord a => [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys)
    | x < y = x : merge xs (y:ys)
    | otherwise = y : merge (x:xs) ys

main :: IO ()
main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ merge a b