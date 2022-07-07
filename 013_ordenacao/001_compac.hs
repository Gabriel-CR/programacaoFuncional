contIguais :: Eq a => a -> [a] -> Int
contIguais num xs = length $ takeWhile (==num) xs

tirarRepeat :: Eq a => a -> [a] -> [a]
tirarRepeat num = dropWhile (==num)

compac :: [Int] -> [[Int]]
compac [] = []
compac xs
    | contIguais a xs <= 1 = [a] : compac (tirarRepeat a xs)
    | otherwise = [a, contIguais a xs ] : compac (tirarRepeat a xs)
    where
        a = head xs

main :: IO ()
main = do
    a <- readLn :: IO [Int]
    print $ compac a
