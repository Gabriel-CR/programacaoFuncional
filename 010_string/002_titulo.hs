toUpper :: Char -> Char
toUpper l = head [maiusculo | (minusculo, maiusculo) <- letras l, minusculo == l]
    where
        letras l = zip ['a'..'z'] ['A'..'Z'] ++ [(l, l)]

toLower :: Char -> Char
toLower l = head [minusculo | (minusculo, maiusculo) <- letras l, maiusculo == l]
    where
        letras l = zip ['a'..'z'] ['A'..'Z'] ++ [(l, l)]

fn :: [Char] -> [Char]
fn f
    | null f = []
    | head f == ' ' = ' ' : toUpper (f !! 1) : fn (drop 2 f)
    | otherwise = toLower (head f) : fn (tail f)

titulo :: [Char] -> [Char]
titulo frase = tail $ fn (" " ++ frase)

main :: IO ()
main = do
    a <- getLine
    print $ titulo a