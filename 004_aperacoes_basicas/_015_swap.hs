swap xs i j = []

main = do
    print $ swap [] 0 5 == []
    print $ swap [1] 0 3 -- == [1]
    print $ swap [1,3,4] 1 2 -- == [1,4,3]
    print $ swap [1,2,3,4,5,6] 2 5 -- == [1,2,6,4,5,3]
    print $ swap [5,6,7,8,9] 0 3 -- == [8,6,7,5,9]