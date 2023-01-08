module Q48
    (and', or', equ', tablen) where

import Q47 (and', or')

equ' :: Bool -> Bool -> Bool
equ' = (==)
infix 7 `equ'`

tablen :: Int -> ([Bool] -> Bool) -> IO()
tablen n f = (putStrLn . unlines) (map (stringBoi f) (perms [[]] n))

stringBoi :: ([Bool] -> Bool) -> [Bool] -> String
stringBoi f xs = concatMap ((++" ") . show) (xs++[f xs])

perms :: [[Bool]] -> Int -> [[Bool]]
perms xs 0 = xs
perms xs n = map (True:) ys ++ map (False:) ys where ys = perms xs $ n-1