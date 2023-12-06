module One.One
    ( one
    ) where

one :: IO ()
one = do
  content <- readFile "/Users/connor/code/advent-of-code-2O23/src/One/input.txt"
  putStrLn content 