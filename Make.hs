module Make where

import Data.Function ((&))
import System.Environment (getArgs)

main :: IO ()
main = do
  contents <-  getArgs >>= readFile . (!! 1)
  putStrLn $ reverse contents & drop 3 & reverse & (++ show contents)