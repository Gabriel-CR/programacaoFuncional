ordenada :: Ord a => [a] -> Bool
ordenada xs = and [x <= y | (x,y) <- zip xs (tail xs)]

inserir :: Ord a => a -> [a] -> [a]
inserir num [] = [num]
inserir num (x:xs)
    | ordenada $ num : x : xs = num : x : xs
    | otherwise = x : inserir num xs

main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ inserir a b
