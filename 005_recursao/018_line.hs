line n = [comeco..fim]
    where comeco = sum [1..n - 1] + 1
          fim = comeco + n - 1

main = do
    a <- readLn :: IO Int
    print $ line a