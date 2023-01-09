module Q35
    (primeFactors) where

primeFactors :: Int -> [Int]
primeFactors n = reverse . snd $ primeFactorsImpl n [] where
    primeFactorsImpl :: Int -> [Int] -> (Int, [Int])
    primeFactorsImpl 1 factors = (1, factors)
    primeFactorsImpl n factors = primeFactorsImpl (n `div` fac) (fac : factors) where 
        fac :: Int
        fac = head (filter (\x -> n `mod` x ==0) [2..n])