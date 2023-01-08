module Q3
    (elementAt) where

elementAt :: [a] -> Int -> a
elementAt l 1 = head l
elementAt l n = elementAt (tail l) (n-1)