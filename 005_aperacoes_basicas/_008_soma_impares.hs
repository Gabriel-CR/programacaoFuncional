somaImpares (x:xs) = somaImpares xs + (if (mod x 2) == 1 then 1 else 0)

main = do
    print $ somaImpares [2,3,1,5] == 9
    print $ somaImpares [1,1,4,2] == 2
    print $ somaImpares [3,2,4,6,5,7,8,0,1] == 16
    print $ somaImpares [2,3,1,5,2,2] == 9
    print $ somaImpares [1,1,1,1] == 4
    {-
    a <- readLn :: IO [Int]
    print $ somaImpares a
    -}