-- retorna o subvetor incluindo o elemento posição índice e lim elementos a esquerda e a direita
neib :: [a] -> Int -> Int -> [a]
neib xs index lim = drop antes (take depois xs)
    where
        antes = index - lim
        depois = index + lim + 1

main :: IO ()
main = do
    print $ neib "abcdef.." 0 2 == "abc"
    print $ neib "abc.def"  3 1 == "c.d"
    print $ neib "abc.def"  3 2 == "bc.de"
    print $ neib "abc.def"  1 2 == "abc."
    print $ neib "abc.def"  5 3 == "c.def"