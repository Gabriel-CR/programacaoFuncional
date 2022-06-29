toUpper :: Char -> Char
toUpper l = head [maiusculo | (minusculo, maiusculo) <- letras l, minusculo == l || maiusculo == l]
    where
        letras l = zip ['a'..'z'] ['A'..'Z'] -- ++ [(l, l)]

upper :: [Char] -> [Char]
upper = map toUpper

main :: IO ()
main = do
    print $ upper "abc" -- == "ABC"
    print $ upper "a Casa Caiu" -- == "A CASA CAIU"
    print $ upper "tenho 45 ABCs" -- == "TENHO 45 ABCS"