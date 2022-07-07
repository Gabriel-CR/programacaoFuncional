fn :: [a] -> Int -> Int -> [a]
fn xs i j = esq ++ [xs !! j] ++ mid ++ [xs !! i] ++ dir
    where
        dir = drop (j + 1) xs
        esq = take i xs
        mid = take (j - i - 1) (drop (i + 1) xs)

swap :: [a] -> Int -> Int -> [a]
swap xs i j
    | i > length xs || j > length xs = xs
    | null xs = []
    | otherwise = fn xs i j


main :: IO ()
main = do
    print $ null (swap [] 0 5)
    print $ swap [1] 0 3            == [1]
    print $ swap [1,3,4] 1 2        == [1,4,3]
    print $ swap [1,2,3,4,5,6] 2 5  == [1,2,6,4,5,3]
    print $ swap [5,6,7,8,9] 0 3    == [8,6,7,5,9]