import System.Win32 (COORD(x))
somarValor a b = a + b

subtrairValor a b = a - b

numeroDeDigitos num
    | num < 10 = 1
    | otherwise = 1 + numeroDeDigitos(num / 10)

tamanho [] = 0
tamanho (_:xs) = 1 + tamanho xs

ultimo (x:[]) = x
ultimo (_:xs) = ultimo xs

penultimo (x:[_]) = x
penultimo (_:xs) = penultimo xs