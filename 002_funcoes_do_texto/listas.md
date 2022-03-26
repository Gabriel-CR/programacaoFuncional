# Operações com listas em Haskell 🟣⚪

> let lostNumbers = [4, 8, 15, 16, 23, 48]

## Concatenando listas
```Haskell
ghci> [1, 2, 3, 4] ++ [9, 10, 11, 12]
[1,2,3,4,9,10,11,12]

ghci> "Hello" ++ " " ++ "world"
"Hello world"

ghci> ['w', 'o'] ++ ['o', 't']
"woot"
```

## Adicionando elemento na lista
```Haskell
ghci> 5 : [1, 2, 3, 4, 5]
[5,1,2,3,4,5]
```

## Acessando lista com índice

```Haskell
ghci> "Steve Buscemi" !! 6
'B'

ghci> [9.4, 33.2, 96.2, 11.2, 23.25] !! 1
33.2
```

## Comparando listas
```Haskell
ghci> [3, 2, 1] > [2, 1, 0]
True

ghci> [3, 4, 2] > [3, 4]
True
```

## Funções com listas
```Haskell
ghci> head [5, 4, 3, 2, 1]
5

ghci> tail [5, 4, 3, 2, 1]
[4,3,2,1]

ghci> last [5, 4, 3, 2, 1]
1

ghci> init [5, 4, 3, 2, 1]
[5,4,3,2]

ghci> length [5, 4, 3, 2, 1]
5

ghci> null []
True

ghci> reverse [5, 4, 3, 2, 1]
[1,2,3,4,5]

ghci> take 3 [5, 4, 3, 2, 1]
[5,4,3]

ghci> drop 3 [8, 4, 2, 1, 5, 6]
[1,5,6]

ghci> maximum [1, 9, 2, 3, 4]
9

ghci> minimum [8, 4, 2, 1, 5, 6]
1

ghci> sum [5, 2, 1, 6, 3, 2, 5, 7]
31

ghci> product [6, 2, 1, 2]
24

ghci> 4 `elem` [3, 4, 5, 6]
True
```