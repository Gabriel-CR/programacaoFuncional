dig2char :: Int -> Char
dig2char dig = snd $ zip [0..9] "0123456789" !! dig

main = do
    print $ map dig2char [0..9] == ['0'..'9']
    print $ dig2char 0 == '0'