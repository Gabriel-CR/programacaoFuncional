line n = [comeco..fim]
    where comeco = sum [1..n - 1] + 1
          fim = comeco + n - 1

triangle 0 = []
triangle m = triangle (m - 1) ++ [line m]

main = do
    a <- readLn :: IO Int
    print $ triangle a