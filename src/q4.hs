module Q4
    (myLength) where

myLength :: [a] -> Int
myLength = sum . map (const 1)