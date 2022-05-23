fn :: (Eq t1, Num t2) => t1 -> [t1] -> t2 -> Maybe t2
fn _ [] _ = Nothing
fn a (x:xs) i = if a == x then Just i else fn a xs (i+1)

myelemIndex :: (Eq t1, Num t2) => t1 -> [t1] -> Maybe t2
myelemIndex a xs = fn a xs 0

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ myelemIndex a b