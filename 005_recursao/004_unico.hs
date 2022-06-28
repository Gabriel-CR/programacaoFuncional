frequencia _ [] = 0
frequencia a xs = if a == head xs then 1 + resto else resto
    where
        resto = frequencia a (tail xs)

unico a xs = frequencia a xs == 1

main = do
    print $ unico 2 [2] -- == True
    print $ unico 2 [3,1] -- == False
    print $ unico 2 [1,2,3,2] -- == False
    print $ unico 2 [1,2,3,4] -- == True