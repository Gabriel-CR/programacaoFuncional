myReverse :: [a] -> [a]
myReverse [] = []
myReverse xs = last xs : myReverse (init xs)

isPalind :: Eq a => [a] -> Bool
isPalind xs
    | xs == myReverse xs = True
    | otherwise = False

main :: IO ()
main = do
    a <- getLine
    print $ isPalind a