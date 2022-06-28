remover _ [] _ = []
remover x (y:ys) ver = if x == y && ver then remover x ys False else y : remover x ys ver

menores 0 xs = []
menores n xs = menor : menores (n' - 1) nova_lista
    where n' = if n > length xs then length xs else n
          nova_lista = remover menor xs True
          menor = minimum xs

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ menores a b