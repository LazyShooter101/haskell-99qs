module Q32
    (myGCD) where 

myGCD :: Int -> Int -> Int
myGCD n m = myGCDImpl (abs n) (abs m) where
    myGCDImpl :: Int -> Int -> Int
    myGCDImpl n m 
        | n == m    = n
        | n > m     = myGCD (n-m) m
        | otherwise = myGCD (m-n) n
