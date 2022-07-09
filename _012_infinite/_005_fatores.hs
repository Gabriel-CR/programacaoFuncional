factors num = [(num, num)]

main = do
    print $ factors 36 == [(2,2),(3,2)]
    print $ factors 50 == [(2,1),(5,2)]
    print $ factors 78 == [(2,1),(3,1),(13,1)]
    print $ factors 60 == [(2,2),(3,1),(5,1)]
    print $ factors 3361743 == [(3,4),(7,3),(11,2)]