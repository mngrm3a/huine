module Main (main) where

main :: IO ()
main = go s
  where
    go [] = pure ()
    go ('\34' : cs) = go cs
    go ('\63' : cs) = print s >> go cs
    go (c : cs) = putChar c >> go cs
    s = "?"