line n = [comeco..fim]
    where comeco = sum [1..n - 1] + 1
          fim = comeco + n - 1

triangle 0 = []
triangle m = triangle (m - 1) ++ [line m]

main = do
    print $ triangle 0 == []
    print $ triangle 1 == [[1]]
    print $ triangle 2 == [[1],[2,3]]
    print $ triangle 3 == [[1],[2,3],[4,5,6]]
    print $ triangle 4 == [[1],[2,3],[4,5,6],[7,8,9,10]]
    print $ triangle 5 == [[1],[2,3],[4,5,6],[7,8,9,10],[11,12,13,14,15]]