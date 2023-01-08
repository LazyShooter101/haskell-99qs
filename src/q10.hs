module Q10
    (encode) where

encode :: Eq a => [a] -> [(Int, a)]
encode (x:xs) = let (same, other) = span (==x) xs
               in (length same + 1, x) : encode other
encode [] = []
