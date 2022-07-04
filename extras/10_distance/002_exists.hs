exists :: Eq a => a -> [a] -> Bool
exists y = foldl achou False
    where achou acc x = acc || (x == y)

main = do
    print $ exists 2 [1,2,3,4,5] == True
    print $ exists 2 [1,3,5] == False
    print $ exists 2 [] == False
    print $ exists 2 [1,2,3,4,5,6] == True