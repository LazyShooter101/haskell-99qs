foldr_func l r = l

compress :: Eq a => [a] -> [a]
compress = foldr (\l r -> case () of
          _ | length r == 0    -> [l]
            | l /= (head r)    -> l:r
            | otherwise        -> r
    ) []