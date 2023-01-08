module Q6
    (isPalindrome) where

isPalindrome :: Eq a => [a] -> Bool
isPalindrome l = all ((== True) . uncurry (==)) (zip l (reverse l))