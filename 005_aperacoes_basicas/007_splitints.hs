splitintsOdd xs = ([x | x <- xs, odd x], [x | x <- xs, even x])

splitintsMenor xs = ([x | x <- xs, x < 5], [x | x <- xs, x >= 5])

main = do
    print $ splitintsOdd [1,2,3,4,5,6,7] == ([1,3,5,7],[2,4,6])
    print $ splitintsMenor [2,4,6,1,1,7] == ([2,4,1,1],[6,7])