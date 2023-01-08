module Q5
    (myReverse) where

myReverse :: [a] -> [a]
myReverse l = [l !! (len - x) | x <- [1..len]] where len=length l
-- better to use: myReverse = foldl (flip (:))