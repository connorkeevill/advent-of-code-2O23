module One.One
    ( one
    ) where

import Data.Char (ord)


-- The IO function for this puzzle
one :: IO Int
one = do
  contents <- readFile "src/One/input.txt"
  return (getCalibrationValue (lines contents))


-- The main function for this puzzle. Actually performs the calibration on a given list of calibration lines.
getCalibrationValue :: [String] -> Int
getCalibrationValue calibrationLine = sum (map parseLine calibrationLine)


-- Parses a single line
parseLine :: [Char] -> Int
parseLine line = 10 * head numbers + last numbers where
  numbers = map charToNumber (filter isNumber line)


-- Returns a boolean indicating whether the character is a number
isNumber :: Char -> Bool
isNumber char = ord char >= 48 && ord char <= 57


-- Converts the char to the number it represents, raising an error if the char is not a number.
charToNumber :: Char -> Int
charToNumber char
  | isNumber char = ord char - 48  -- 48 is the ascii value for 0, so 48 - 48 -> 0 etc.
  | otherwise     = error ("Character '" ++ [char] ++ "' is not numerical.")
