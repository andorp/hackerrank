import Control.Applicative


solveMeFirst :: Int -> Int -> Int
solveMeFirst a b = a + b

main = print =<< (solveMeFirst <$> readLn <*> readLn)
