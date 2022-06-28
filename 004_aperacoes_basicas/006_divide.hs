divide xs 0 = ([] , xs)
divide xs num = (inicio, resto)
    where
        inicio = take num xs
        resto = drop num xs

main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO Int
    print $ divide a b