boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

substantivos = ["gerente","programador","cliente"]  
adjetivos = ["malemolente","chato","fofoqueiro"]

vamorRir = [substantivos ++ " " ++ adjetivos | substantivos <- substantivos, adjetivos <- adjetivos]

length' xs = sum [1 | _ <- xs]

removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

removerImpares xxs = [[ x | x <- xs, even x ] | xs <- xxs]