<h1>Operações com listas</h1>

> let lostNumbers = [4, 8, 15, 16, 23, 48]

<h2>Concatenando listas</h2>
    ```haskell
    ghci> [1, 2, 3, 4] ++ [9, 10, 11, 12]<br>
    [1,2,3,4,9,10,11,12]<br>
    ghci> "Hello" ++ " " ++ "world"<br>
    "Hello world"<br>
    ghci> ['w', 'o'] ++ ['o', 't']<br>
    "woot"<br>
    ```

<h2>ADICIONANDO ELEMENTO NA LISTA</h2>
    ~~~haskell
    ghci> 5 : [1, 2, 3, 4, 5]
    [5,1,2,3,4,5]
    ~~~

ACESSANCO LISTA COM O ÍNDICE
    "Steve Buscemi" !! 6
    [9.4, 33.2, 96.2, 11.2, 23.25] !! 1 

COMPARAR LISTAS
    [3, 2, 1] > [2, 1, 0] = True
    [3, 4, 2] > [3, 4] = True

FUNÇÕES COM LISTAS
    head [5, 4, 3, 2, 1] = 5
    tail [5, 4, 3, 2, 1] = [4, 3, 2, 1]
    last [5, 4, 3, 2, 1] = 1
    init [5, 4, 3, 2, 1] = [5, 4, 3, 2]
    length [5, 4, 3, 2, 1] = 5
    null [] = True
    reverse [5, 4, 3, 2, 1] = [1, 2, 3, 4, 5]
    take 3 [5, 4, 3, 2, 1] = [5, 4, 3]
    drop 3 [8, 4, 2, 1, 5, 6] = [1, 5, 6]
    maximum [1, 9, 2, 3, 4] = 9
    minimum [8, 4, 2, 1, 5, 6] = 1
    sum [5, 2, 1, 6, 3, 2, 5, 7] = 31
    product [6, 2, 1, 2] = 24
    4 `elem` [3, 4, 5, 6] = True