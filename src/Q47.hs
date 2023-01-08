module Q47
    (or', and', table) where

import Combinators ((...))

or',and' :: Bool -> Bool -> Bool

or' False False = False
or' _ _ = True

and' True True = True
and' _ _ = False

infixl 4 `or'`
infixl 6 `and'`

table :: (Bool -> Bool -> Bool) -> IO()
table f = do {
    putStrLn $ "True  True  "  ++ (show ... f) True  True ;
    putStrLn $ "True  False " ++ (show ... f) True  False;
    putStrLn $ "False True  "  ++ (show ... f) False True ;
    putStrLn $ "False False " ++ (show ... f) False False
}