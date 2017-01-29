import Control.Arrow
import Control.Applicative
import Control.Monad
import System.IO

count :: Eq a => a -> [a] -> Int
count x = length . filter (x==)

intList :: String -> [Int]
intList = fmap read . words

main :: IO ()
main = do
    as <- intList <$> getLine
    bs <- intList <$> getLine
    let (ap, bp) = (count GT &&& count LT) $ zipWith compare as bs
    putStrLn $ unwords [show ap, show bp]
