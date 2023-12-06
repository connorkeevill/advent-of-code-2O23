module Main (main) where

import One.One

main :: IO ()
main = do
  result <- one 
  print result
