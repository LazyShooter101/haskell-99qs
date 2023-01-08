module Q49
    (gray) where

gray :: Int -> [String]
gray 0 = [""]
gray n = map ('0':) prev ++ map ('1':) (reverse prev) where prev = gray (n-1)