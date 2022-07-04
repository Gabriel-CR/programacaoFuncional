selec :: [a] -> [Int] -> [a]
selec frase coordenadas = [frase !! pos | pos <- coordenadas, pos < length frase]

main :: IO ()
main = do
    a <- getLine
    b <- readLn :: IO [Int]
    print $ selec a b