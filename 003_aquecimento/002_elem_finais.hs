final 0 _ = []
final _ [] = []
final qtd (_:xs) = reverse $ take qtd $ reverse xs

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ final a b