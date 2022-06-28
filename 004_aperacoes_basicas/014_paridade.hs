paridade xs = not teste
    where
        lista = [1 | x <- xs, x]
        teste = even (sum lista)

main = do
    a <- readLn :: IO [Bool]
    print $ paridade a