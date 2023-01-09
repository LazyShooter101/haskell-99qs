module Q33
    (coprime) where

import Combinators ((...))

coprime :: Int -> Int -> Bool
coprime = (==1) ... gcd