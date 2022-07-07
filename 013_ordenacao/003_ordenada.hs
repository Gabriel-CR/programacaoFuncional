ordenada :: Ord a => [a] -> Bool
ordenada xs = and [x <= y | (x,y) <- zip xs (tail xs)]

main :: IO ()
main = do
    a <- readLn :: IO [Int]
    print $ ordenada a