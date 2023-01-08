import Data.List

data RLE a = Multiple Int a | Single a
    deriving Show

encodeModified :: Eq a => [a] -> [RLE a]
encodeModified = (map f) . (map (\x -> (length x, head x))) . group where
    f (1, v) = Single v
    f (n, v) = Multiple n v