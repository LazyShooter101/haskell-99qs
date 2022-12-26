pack :: Eq a => [a] -> [[a]]
pack = foldr (\l r -> case () of
    _ | length r == 0        -> [[l]]
      | l == (head (head r)) -> [l:(head r)] ++ tail r
      | otherwise            -> [l]:r   ) []
