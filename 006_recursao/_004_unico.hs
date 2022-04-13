unico a [x] = x == a
unico a xs = head xs == a || not (unico a (tail xs))

main = do
    print $ unico 2 [2] == True
    print $ unico 2 [3,1] == False
    print $ unico 2 [1,2,3,2] == False