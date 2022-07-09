vigenere frase chave = frase

main :: IO ()
main = do
    print $ vigenere "ATACARBASESUL" "LIMAO" == "LBMCOCJMSSDCX"
    print $ vigenere "ABACATE" "A" == "ABACATE" 
    print $ vigenere "ABACATE" "B" == "BCBDBUF" 
    print $ vigenere "ABACATE" "AB" == "ACADAUE" 