fib :: (Num a, Num p, Ord a) => a -> p
fib n
    | n == 0 = 0
    | n < 2 = 1
    | otherwise = fib (n-1) + fib (n-2)

vetFib :: (Num a1, Num a2, Enum a1, Ord a1) => a1 -> [a2]
vetFib num
    | num == 0 = []
    | num == 1 = [1]
    | num == 2 = [0, 1]
    | otherwise = [fib x | x <- [0..num - 1]]

main :: IO ()
main = do
    a <- readLn :: IO Int
    print $ vetFib a
