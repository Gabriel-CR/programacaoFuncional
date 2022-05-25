somaMaybe :: Num a => Maybe a -> Maybe a -> Maybe a
somaMaybe (Just a) (Just b) = Just(a + b)
somaMaybe (Just a) Nothing = Just a
somaMaybe Nothing (Just b) = Just b
somaMaybe Nothing Nothing = Nothing

main = do
    print $ somaMaybe (Just 5) (Just 7) == Just(12)
    print $ somaMaybe (Just 5) Nothing == Just(5)
    print $ somaMaybe Nothing (Just 3) == Just(3)
    print $ somaMaybe Nothing Nothing == Nothing