mynub [] = []
mynub (x:xs) = x : mynub (filter (/=x) xs)

main = do
    print $ mynub [1,1,1] == [1]
    print $ mynub [2,1,2,1,1,1,1,2] == [2,1]
    print $ mynub [2,1,2,1,1,1,1,2,3] == [2,1,3]
    print $ mynub [1,2,5,2,5,7,2,5] == [1,2,5,7]