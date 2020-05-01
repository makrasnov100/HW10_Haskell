-- Problem: EX10_02
-- Author: Kostiantyn Makrasnov 

-- References:
-- 1) foldl doc - http://zvon.org/other/haskell/Outputprelude/foldl_f.html
-- 2) haskell doc - https://www.haskell.org/tutorial/patterns.html

listProductPattern :: [Int] -> Int
listProductPattern [] = 1
listProductPattern (x:xs) = x * listProductPattern xs

main :: IO ()
main = do 
    let testList = [1, 2 .. 5]
    --using list pattern matching
    print $ (listProductPattern testList) --should end up as 120 = 5!
    --using foldl
    print $ (foldl (*) 1 testList) --should end up as 120 = 5