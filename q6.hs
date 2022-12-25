isPalindrome :: Eq a => [a] -> Bool
isPalindrome l = all (== True) (map (\x -> (fst x) == (snd x)) (zip l (reverse l)))