import Control.Monad (replicateM)

setL :: [a] -> Int -> a -> [a]
setL xs pos value = take pos xs ++ [value] ++ drop (pos + 1) xs

setM :: [[a]] -> Int -> Int -> a -> [[a]]
setM xxs l c value = inicio ++ [meio] ++ fim
    where
        inicio = take l xxs
        meio = setL (xxs !! l) c value
        fim = drop (l + 1) xxs

neibs :: (Num a1, Num a2) => (a1, a2) -> [(a1, a2)]
neibs (l, c) = [(l - 1, c), (l + 1, c), (l, c - 1), (l, c + 1)]

burn :: (Int, Int, [[Char]]) -> (Int, Int) -> (Int, Int, [[Char]])
burn (nl, nc, mat) (l, c)
    | l < 0 || l >= nl || c < 0 || c >= nc = (nl, nc, mat)
    | mat !! l !! c /= '#' = (nl, nc, mat)
    | otherwise = foldl burn newMat $ neibs (l, c)
    where
        newMat = (nl, nc, setM mat l c 'o')

main :: IO ()
main = do
    [nl, nc] <-  map (read :: String -> Int) . words <$> getLine
    mat <- replicateM nl getLine
    let (nl', nc', mat') = burn (nl, nc, mat) (0, 0)
    mapM_ putStrLn mat'