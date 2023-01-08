module Q2
    ( myButLast ) where

myButLast :: [a] -> a
myButLast = head . tail . reverse