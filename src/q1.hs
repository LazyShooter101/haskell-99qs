module Q1 
    ( myLast ) where

myLast :: [a] -> a
myLast = (head . reverse)