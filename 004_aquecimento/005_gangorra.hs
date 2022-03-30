gangorra p1 c1 p2 c2
    | esquerda > direita = -1
    | esquerda < direita = 1
    | otherwise = 0
    where
        esquerda = p1 * c1
        direita = p2 * c2

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    d <- readLn :: IO Int
    print $ gangorra a b c d