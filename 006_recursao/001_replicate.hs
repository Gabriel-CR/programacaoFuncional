myreplicate 0 b = []
myreplicate a b = myreplicate (a-1) b ++ [b]

main = do
    print $ myreplicate 4 0 == [0, 0, 0, 0]
    print $ myreplicate 2 True == [True, True]
    print $ myreplicate 3 "banana" == ["banana", "banana", "banana"]