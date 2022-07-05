toList :: Integral a => a -> [a]
toList 0 = []
toList n = (n `mod` 10) : toList (n `div` 10)

rev :: Integral a => a -> a
rev num = sum [y * 10 ^ x | (x, y) <- lista]
    where
        lista = reverse $ zip [0..] $ reverse $ toList num

main :: IO ()
main = do
    a <- readLn :: IO Int
    print $ rev a