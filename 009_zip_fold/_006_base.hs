base 0 a = []
base n a = (n `div` a) : base (n `div` a) a

main = do
    print $ base 25 10 -- == "25"
    print $ base 17 2 -- == "10001"
    print $ base 26 16 -- == "1A"
    print $ base 26012 36 -- == "K2K"