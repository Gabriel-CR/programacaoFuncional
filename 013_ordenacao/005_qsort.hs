qsort :: (Ord a) => [a] -> [a]
qsort [] = []
qsort (x:xs) =  menor ++ [x] ++ maior
    where
        menor = qsort [y | y <- xs, y < x]
        maior = qsort [y | y <- xs, y >= x]

main :: IO ()
main = do
    a <- readLn :: IO [Int]
    print $ qsort a