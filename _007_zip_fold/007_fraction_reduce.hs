reduce :: Integral b => (b, b) -> (b, b)
reduce (x, y) = foldl dividir (x, y) divisor
    where
        dividir (x, y) n
            | x `mod` n == 0 && y `mod` n == 0 = (x `div` n, y `div` n)
            | otherwise = (x, y)
        divisor = [minimo, minimo - 1..2]
        minimo = min x y

main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ reduce (a,b)