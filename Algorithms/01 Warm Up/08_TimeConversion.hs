import Control.Applicative
import Control.Monad
import System.IO
import Text.Printf

readInt :: String -> Int
readInt = read

main :: IO ()
main = do
  [h1,h2,':',m1,m2,':',s1,s2,x,m] <- getLine
  let h = readInt [h1, h2]
  let hm = case [x, m] of
            "AM" -> case h of
                      12 -> 0
                      x  -> x
            "PM" -> case h of
                      12 -> 12
                      x  -> 12 + x
  putStrLn $ concat [printf "%02d" hm, ":", [m1, m2], ":", [s1, s2]]
