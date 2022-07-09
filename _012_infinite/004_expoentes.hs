fn :: Integral a => a -> a -> [a]
fn n d
    | n == 0 = []
    | n `mod` d == 0 = n : fn (n `div` d) d
    | otherwise = fn (n `div` d) d

expoentes :: Integral a => a -> a -> Int
expoentes x y = length $ fn x y
    
main :: IO ()
main = do
    print $ expoentes 7 2       == 0
    print $ expoentes 4 2       == 2
    print $ expoentes 8 2       == 3
    print $ expoentes 24 2      == 3
    print $ expoentes 1024 2    == 10
    print $ expoentes 150 5     == 2