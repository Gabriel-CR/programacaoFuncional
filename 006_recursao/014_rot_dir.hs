rotDir 0 xs = xs
rotDir n xs = rotDir (n - 1) $ last xs : init xs

main = do
    print $ rotDir 0 "asdfg" == "asdfg"
    print $ rotDir 1 "asdfg" == "gasdf"
    print $ rotDir 2 "asdfg" == "fgasd"
    print $ rotDir 3 "asdfg" == "dfgas"
    print $ rotDir 4 "asdfg" == "sdfga"
    print $ rotDir 5 "asdfg" == "asdfg"