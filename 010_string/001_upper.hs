toUpper :: Char -> Char
toUpper l = head [maiusculo | (minusculo, maiusculo) <- letras l, minusculo == l]
    where
        letras l = zip ['a'..'z'] ['A'..'Z'] ++ [(l, l)]

upper :: [Char] -> [Char]
upper [] = []
upper (x:xs) = toUpper x : upper xs

main :: IO ()
main = do
    frase <- getLine
    print $ upper frase