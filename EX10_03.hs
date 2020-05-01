-- Problem: EX10_03
-- Author: Kostiantyn Makrasnov 

-- References:
-- 1) foldl doc - http://zvon.org/other/haskell/Outputprelude/foldl_f.html
-- 2) haskell doc - https://www.haskell.org/tutorial/patterns.html
-- 3) operator as parameter - https://stackoverflow.com/questions/55327293/folds-implementation-in-haskell


listOpExec :: Num a => (a->a->a) -> [a] -> a
listOpExec (*) [] = 1
listOpExec op (x:xs) = x `op` (listOpExec op xs)

main :: IO ()
main = do 
    let testList = [1, 2 .. 5]
    print "Adding 1 - 5"
    print $ (listOpExec (+) testList) 
    print "Multiplying 1 - 5"
    print $ (listOpExec (*) testList) 
