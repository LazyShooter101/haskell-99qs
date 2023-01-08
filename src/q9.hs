module Q9
  (pack) where

pack :: Eq a => [a] -> [[a]]
pack = foldr (\l r -> case () of
    _ | null r             -> [[l]]
      | l == head (head r) -> (l:head r) : tail r
      | otherwise          -> [l]:r   ) []
