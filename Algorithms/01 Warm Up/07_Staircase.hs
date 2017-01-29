import Control.Applicative
import Control.Monad
import System.IO

main :: IO ()
main = do
  n <- (read :: String -> Int) <$> getLine
  let line i = replicate (n - i) ' ' ++ replicate i '#'
  forM_ [1..n] (putStrLn . line)
