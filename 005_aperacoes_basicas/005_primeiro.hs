primeiros xs = take tamanho xs
    where
        tamanho = if length xs - 1 < 0 then length xs else length xs - 1

main = do
    a <- readLn :: IO [Int]
    print $ primeiros a