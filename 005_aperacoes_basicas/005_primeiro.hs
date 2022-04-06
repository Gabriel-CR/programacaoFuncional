primeiros [x] = []
primeiros (x:xs) = x : (primeiros xs)

main = do
    print $ primeiros [1] == []
    print $ primeiros [1,2] == [1]
    print $ primeiros [1,2,3,4] == [1,2,3]
    print $ primeiros [1,2,3,4,5] == [1,2,3,4]
    print $ primeiros [1,2,3,4,5,6] == [1,2,3,4,5]
    print $ primeiros [1,2,3,4,5,6,7] == [1,2,3,4,5,6]
    print $ primeiros [1,2,3,4,5,6,7,8] == [1,2,3,4,5,6,7]