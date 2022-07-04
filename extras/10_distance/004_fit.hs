import Data.List
import Data.Maybe

neib :: [a] -> Int -> Int -> [a]
neib xs index lim = drop antes (take depois xs)
    where
        antes = index - lim
        depois = index + lim + 1

exists :: Eq a => a -> [a] -> Bool
exists y = foldl achou False
    where achou acc x = acc || (x == y)

dig2char :: Int -> Char
dig2char dig = snd $ lista !! dig
    where
        lista = zip [0..9] "0123456789"

-- verifica se esse valor pode ser inserido nesse índice
fit :: (String, Int) ->  Int -> Int -> Bool
fit (xs, lim) index value = not (exists charValue lista)
    where
        lista = neib xs index lim
        charValue = dig2char value

main = do
    print $ map (fit ("12.345", 1) 2) [1,2,3,4,5] == [True, False, False, True, True]
    print $ map (fit ("12.345", 2) 2) [1,2,3,4,5] == [False, False, False, False, True]
    print $ map (fit ("12.345", 3) 2) [1,2,3,4,5] == [False, False, False, False, False]
    print $ map (fit ("12345.", 4) 5) [1,2,3,4,5] == [True, False, False, False, False]