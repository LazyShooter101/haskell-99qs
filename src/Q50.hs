module Q50
    (huffman, nodesToIds, huffmanToNodes, huffmanCollapse, Node) where

import Data.List (sort)
import Data.Function (on)

data Node = Leaf Int Char | Internal Int Node Node
    deriving (Show, Eq)

nodeNum :: Node -> Int
nodeNum (Leaf n _) = n
nodeNum (Internal n _ _) = n

instance Ord Node where
    a <= b = nodeNum a <= nodeNum b

huffman :: [(Char, Int)] -> [(Char, String)]
huffman xs = nodesToIds ((head . huffmanCollapse . huffmanToNodes) xs) [] ""

nodesToIds :: Node -> [(Char, String)] -> String -> [(Char, String)]
nodesToIds (Leaf _ c)       xs routeName = (c, routeName):xs
nodesToIds (Internal _ l r) xs routeName = drop (length xs) (reverse (nodesToIds l xs (routeName ++ "0"))) ++ nodesToIds r xs (routeName ++ "1")

huffmanToNodes :: [(Char, Int)] -> [Node]
huffmanToNodes = sort . map (\ (c, n) -> Leaf n c)

huffmanCollapse :: [Node] -> [Node]
huffmanCollapse (a:b:xs) = huffmanCollapse . sort $ Internal (((+) `on` nodeNum) a b) a b : xs
huffmanCollapse [x] = [x]
huffmanCollapse [] = []