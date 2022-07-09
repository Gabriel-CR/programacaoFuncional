setL xs pos value = take pos xs ++ [value] ++ drop (pos + 1) xs

setM xxs l c value = inicio ++ [meio] ++ fim
    where
        inicio = take l xxs
        meio = setL (xxs !! l) c value
        fim = drop (l + 1) xxs

testSetL = do
    print $ setL [1,2,3,4,5] 2 9 == [1,2,9,4,5]
    print $ setL [1,2,3,4,5] 0 9 == [9,2,3,4,5]
    print $ setL [1,2,3,4,5] 4 9 == [1,2,3,4,9]

testSetM = do
    print $ setM [[0,0,0], [0,0,0], [0,0,0]] 1 2 1 == [[0,0,0], [0,0,1], [0,0,0]]
    print $ setM [[0,0,0], [0,0,0], [0,0,0]] 0 1 1 == [[0,1,0], [0,0,0], [0,0,0]]
    print $ setM [[0,0,0], [0,0,0], [0,0,0]] 2 2 1 == [[0,0,0], [0,0,0], [0,0,1]]