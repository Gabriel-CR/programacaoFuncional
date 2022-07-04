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

# Criando listas

> ```[1..20], ['a'.. 'c']```

## Criando listas obedecendo sequências
```Haskell
ghci> [2,4..20]  
[2,4,6,8,10,12,14,16,18,20]  
ghci> [3,6..20]  
[3,6,9,12,15,18]
```

## Listas com ponto flutuante
⚠️ Por muitas vezes acabam sendo imprecisos
```Haskell
ghci> [0.1, 0.3 .. 1]  
[0.1,0.3,0.5,0.7,0.8999999999999999,1.0999999999999999] 
```

## Listas infinitas
```Haskell
ghci> take 24 [13,26..]  
[13,26,39,52,65,78,91,104,117,130,143,156,169,182,195,208,221,234,247,260,273,286,299,312]
```

### Funções com listas infinitas
* cycle
    ```Haskell
    ghci> take 10 (cycle [1,2,3])  
    [1,2,3,1,2,3,1,2,3,1]

    ghci> take 12 (cycle "LOL ")  
    "LOL LOL LOL " 
    ```

* Repeat
    ```Haskell
    ghci> take 10 (repeat 5)  
    [5,5,5,5,5,5,5,5,5,5]
    ```

# Compressão de listas

## Compressão
```Haskell
ghci> [x*2 | x <- [1..10]]  
[2,4,6,8,10,12,14,16,18,20]
```

### Compressão de listas com o uso de condições
* lista entre 50 e 100 com números com resto da divisão por 7 igual a 3
```Haskell
ghci> [ x | x <- [50..100], x `mod` 7 == 3]  
[52,59,66,73,80,87,94]
```

