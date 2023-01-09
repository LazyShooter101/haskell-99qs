module Q34
    (totient) where

import Combinators ((...))

totient :: Int -> Int
totient n = length $ filter (coprime n) [1..n-1] where coprime = (==1) ... gcd