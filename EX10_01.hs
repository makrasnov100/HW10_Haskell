-- Problem: EX10_01
-- Author: Kostiantyn Makrasnov 

-- References:
-- 1) foldl doc - http://zvon.org/other/haskell/Outputprelude/foldl_f.html
-- 2) haskell doc - https://www.haskell.org/tutorial/patterns.html

listSumPattern :: [Int] -> Int
listSumPattern [] = 0
listSumPattern (x:xs) = x + listSumPattern xs

main :: IO ()
main = do 
    let testList = [0, 1 .. 10]
    --using list pattern matching
    print $ (listSumPattern testList) --should end up as 55
    --using foldl
    print $ (foldl (+) 0 testList) --should end up as 55