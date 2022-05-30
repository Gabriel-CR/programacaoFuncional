getHoles :: String -> [Int]
getHoles xs = snd $ foldl ponto (0, []) xs
    where
        ponto (i, acc) x = if x == '.' then (i + 1, acc ++ [i]) else (i + 1, acc)

main = do
    print $ getHoles "12.3.." == [2,4,5]
    print $ getHoles "12.3.4" == [2,4]
    print $ getHoles "...3.4" == [0,1,2,4]