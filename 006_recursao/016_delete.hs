remover _ [] _ = []
remover x (y:ys) ver = if x == y && ver then remover x ys False else y : remover x ys ver

deletee n xs = remover n xs True

main = do
    print $ deletee 5 [] == []
    print $ deletee 1 [1] == []
    print $ deletee 4 [1,3,4] == [1,3]
    print $ deletee 3 [4,3,1,3] == [4,1,3]
    print $ deletee 5 [1,5,6,9] == [1,6,9]