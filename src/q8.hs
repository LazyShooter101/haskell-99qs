module Q8
  (compress) where

compress :: Eq a => [a] -> [a]
compress = foldr (\l r -> case () of
          _ | null r      -> [l]
            | l /= head r -> l:r
            | otherwise   -> r
    ) []