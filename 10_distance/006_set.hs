set :: String -> Int -> Int -> String
set xs index value = take index xs ++ show value ++ drop (index + 1) xs

main = do
    print $ set "12345" 0 9 -- == "92345"
    print $ set "12345" 1 9 -- == "19345"
    print $ set "12345" 4 9 -- == "12349"