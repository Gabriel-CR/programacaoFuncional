intercal [] [] = []
intercal xs [] = head xs : intercal (tail xs) []
intercal [] ys = head ys : intercal [] (tail ys)
intercal xs ys = head xs : head ys : intercal (tail xs) (tail ys)

main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ intercal a b