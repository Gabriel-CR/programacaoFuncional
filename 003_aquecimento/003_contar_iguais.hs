iguais a b c
    | todosIguais = 3
    | doisIguais = 2
    | otherwise = 0
    where
        todosIguais = a == b && b == c
        doisIguais = a == b || b == c || a == c

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    print $ iguais a b c