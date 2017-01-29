{-# OPTIONS_GHC -O2 #-}
import Control.Applicative
import Control.Monad
import System.IO
import Data.Array

readInt :: String -> Int
readInt = read

main :: IO ()
main = do
    [n, k, q] <- map readInt . words <$> getLine
    let r = k `mod` n
    a <- listArray (0, n) . map readInt . words <$> getLine
    forM_ [1..q] $ \_ -> do
        m <- readInt <$> getLine
        print $ a ! ((m - r) `mod` n)
