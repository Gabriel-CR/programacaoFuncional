import Control.Monad (replicateM)
import Distribution.Verbosity (verboseTimestamp)

toInt :: String -> Int
toInt x = read x :: Int

desempacota :: String -> (Int, Int)
desempacota line = (a, b)
    where [a, b] = map toInt $ words line

classificou :: (Ord a1, Ord a2, Num a1, Num a2) => (a3, (a1, a2)) -> Bool
classificou (i, (x, y)) = x > 9 && y > 9

fobj :: Num a => (a, a) -> a
fobj (x, y) = abs (x - y)

competir :: (Ord a1, Num a1) => (a2, (a1, a1)) -> (a2, (a1, a1)) -> (a2, (a1, a1))
competir (ind1, pedras1) (ind2, pedras2)
        | fobj pedras1 < fobj pedras2 = (ind1, pedras1)
        | otherwise = (ind2, pedras2)

process :: [String] -> String
process vet
    | null classificados = "sem ganhador"
    | otherwise = show ganhador
    where
        tuplas = map desempacota vet
        pares = zip [0..] tuplas
        classificados = filter classificou pares
        ganhador = fst $ foldl1 competir classificados

main :: IO ()
main = do
    size <- readLn :: IO Int
    vet <- replicateM size getLine
    putStrLn $ process vet