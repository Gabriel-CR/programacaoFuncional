toList :: Integral a => a -> [a]
toList 0 = []
toList n = (n `mod` 10) : toList (n `div` 10)

sdig :: Integral a => a -> a
sdig xs = sum $ toList xs

main :: IO ()
main = do
    a <- readLn :: IO Int
    print $ sdig a