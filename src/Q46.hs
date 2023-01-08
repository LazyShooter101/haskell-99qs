module Q46
    (or', and', table) where

import Combinators ((...))

or' :: Bool -> Bool -> Bool
or' a b
    | a = True
    | b = True
    | otherwise = False

and' :: Bool -> Bool -> Bool
and' a b
    | a = b
    | otherwise = False

table :: (Bool -> Bool -> Bool) -> IO()
table f = do {
    putStrLn $ "True  True  "  ++ (show ... f) True  True ;
    putStrLn $ "True  False " ++ (show ... f) True  False;
    putStrLn $ "False True  "  ++ (show ... f) False True ;
    putStrLn $ "False False " ++ (show ... f) False False
}