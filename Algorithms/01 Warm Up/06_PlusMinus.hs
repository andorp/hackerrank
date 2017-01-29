import Control.Applicative
import Control.Monad
import System.IO
import Text.Printf

printD :: Double -> IO ()
printD = putStrLn . printf "%.6F"

main :: IO ()
main = do
    n   <- (read :: String -> Int) <$> getLine
    arr <- map (read :: String -> Int) . words <$> getLine
    printD $ (fromIntegral (length (filter (> 0) arr))) / (fromIntegral n)
    printD $ (fromIntegral (length (filter (< 0) arr))) / (fromIntegral n)
    printD $ (fromIntegral (length (filter (==0) arr))) / (fromIntegral n)
