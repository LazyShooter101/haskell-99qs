{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use last" #-}
module Q1 
    ( myLast ) where

myLast :: [a] -> a
myLast = head . reverse