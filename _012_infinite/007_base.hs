base :: Int -> Int -> [Char]
base 0 _ = []
base b num = base prox num ++ [lista !! resto]
    where
        lista = ['0'..'9'] ++ ['A'..'Z']
        resto = b `mod` num
        prox = b `div` num

main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ base a b