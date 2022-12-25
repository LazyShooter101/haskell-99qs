myLength :: [a] -> Int
myLength = sum . map (const 1)