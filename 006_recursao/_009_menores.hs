remover a xs = [x | x <- xs, x /= a]

menores 0 xs = []
menores n xs = menor : menores (n - 1) nova_lista
    where
        nova_lista = remover menor xs
        menor = minimum xs

main = do
    print $ remover 'a' "aabcdef"
    -- print $ menores 0 [6,2,2,4,9] -- == []
    -- print $ menores 1 [6,2,2,4,9] -- == [2]
    -- print $ menores 3 [5,5,5] -- == [5,5,5]
    -- print $ menores 2 [5,5,2,5] -- == [2,5]
    -- print $ menores 2 [6,2,2,4,9] -- == [2,2]
    -- print $ menores 2 [6,2,3,4,9] -- == [2,3]
    -- print $ menores 3 [6,2,3,4,9] -- == [2,3,4]
    -- print $ menores 4 [6,2,3,4,9] -- == [6,2,3,4]
    -- print $ menores 5 [6,2,3,4,9] -- == [6,2,3,4,9]
    -- print $ menores 4 [3,1,2] -- == [3,1,2]
    -- print $ menores 3 [5,3,1,9,7,2] -- == [3,1,2]