module MyLib
    ( someFunc, listToStr ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

listToStr :: Show a => [a] -> String
listToStr = foldr (\x s -> show x ++ ", " ++ s) ""