myReplicate x rep = rep : replicate (x - 1) rep

main :: IO ()
main = do
    print $ myReplicate 4 0 == [0, 0, 0, 0]
    print $ myReplicate 2 True == [True, True]
    print $ myReplicate 3 [5] == [[5], [5], [5]]