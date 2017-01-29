import Control.Applicative
import Control.Monad
import System.IO

diagonal    = rowElems (!!)
diagonal' n = rowElems (\r i -> r !! (n - i))

rowElems :: ([a] -> Int -> a) -> [[a]] -> [a]
rowElems idx rs = map (uncurry idx) $ rs `zip` [0..]

main :: IO ()
main = do
    n_temp <- getLine
    let n = read n_temp :: Int
    a_temp <- getMultipleLines n
    let a = map ( map ( read :: String -> Int ) . words ) a_temp
    print $ abs (sum (diagonal a) - sum (diagonal' (n - 1) a))


getMultipleLines :: Int -> IO [String]
getMultipleLines n
    | n <= 0 = return []
    | otherwise = do
        x <- getLine
        xs <- getMultipleLines (n-1)
        let ret = (x:xs)
        return ret
