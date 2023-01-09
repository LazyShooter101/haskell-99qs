module Q31
    (isPrime) where

isPrime :: Int -> Bool
isPrime n = all (/= 0) $ map (n `mod`) [2,4..m] where m = (floor . sqrt . fromIntegral) n