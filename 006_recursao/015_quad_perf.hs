verificarQuad a b = (a * a == b && a < b) || (a <= b && verificarQuad (a + 1) b)
quadPerf = verificarQuad 1

main = do
    a <- readLn :: IO Int
    print $ quadPerf a