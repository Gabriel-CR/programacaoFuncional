intercal [] [] = []
intercal xs ys =    if not (null xs && null ys) 
                    then [head xs,head ys] ++ intercal (tail xs) (tail ys)
                    else if null xs && not (null ys)
                         then [head ys] ++ intercal [] (tail ys)
                         else if not (null xs) && null ys
                              then [head xs] ++ intercal (tail xs) []
                              else intercal xs ys

main = do
    print $ intercal [1,2,3] [7,8,9]    -- == [1,7,2,8,3,9]
    print $ intercal [1,2,3,4] [8,9]    -- == [1,8,2,9,3,4]
    -- print $ intercal [5] [1,2,6]        -- == [5,1,2,6]