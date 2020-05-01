-- Problem: EX10_01 (part 2)
-- Author: Kostiantyn Makrasnov 

-- References:
-- 1) foldl doc - http://zvon.org/other/haskell/Outputprelude/foldl_f.html
-- 2) haskell doc - https://www.haskell.org/tutorial/patterns.html
-- 3) operator as parameter - https://stackoverflow.com/questions/55327293/folds-implementation-in-haskell


listOpExec :: Num a => (a->a->a) -> [a] -> a
listOpExec (*) [] = 1
listOpExec op (x:xs) = x `op` (listOpExec op xs)

sumExec :: Enum n => Num n => n -> n
sumExec n = listOpExec (+) [1 .. n]

factorialExec :: Enum n => Num n => n -> n
factorialExec n = listOpExec (*) [1 .. n]

main :: IO ()
main = do 
    print "Adding 1 - 7"
    print $ (sumExec 7)
    print "Multiplying 1 - 7"
    print $ (factorialExec 7)