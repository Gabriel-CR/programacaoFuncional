gerador1 :: (Num t, Eq t) => t -> [t]
gerador1 x
    | x == 0 = x : gerador1 (x + 1)
    | otherwise = [x] ++ [-x] ++ gerador1 (x + 1)

gerador2 :: Integral a => a -> [a]
gerador2 x
    | even x = (-x) : gerador2 (x + 1)
    | otherwise = x : gerador2 (x + 1)

gerador3 :: Num t => t -> [t]
gerador3 x = x : gerador3 (x + x)

gerador4 :: Integral t => t -> [t]
gerador4 x
    | x == 1 = [x]
    | otherwise = x : gerador4 (x `div` 2)

main = do
    print $ take 10 $ gerador1 0
    print $ take 10 $ gerador2 1
    print $ take 10 $ gerador3 1
    print $ gerador4 1000