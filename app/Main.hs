module Main (main) where

import MyLib ( someFunc, listToStr )

main :: IO ()
main = do {
    someFunc
;   putStrLn (listToStr [1 :: Int, 2, 3, 4])
}
