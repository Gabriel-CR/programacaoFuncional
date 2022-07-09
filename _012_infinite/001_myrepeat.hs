myRepeat :: t -> [t]
myRepeat num = num : myRepeat num

main :: IO ()
main = do
    print $ take 3 $ myRepeat 4 -- == [4,4,4]
    print $ take 2 $ myRepeat 5 -- == [5,5]