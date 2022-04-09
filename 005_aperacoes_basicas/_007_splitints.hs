splitints = splitints;

main = do
    print $ splitints odd [1,2,3,4,5,6,7] == ([1,3,5,7],[2,4,6])
    print $ splitints (<5) [2,4,6,1,1,7] == ([2,4,1,1],[6,7])