import Data.List (sortBy)

main :: IO ()
stringToInt :: String -> Int
stringToInt = read

elfList :: [String] -> [Int] -> [[Int]] -> [[Int]]
elfList [] _ list = list
elfList (x : xs) acc lst
  | x == "" = elfList xs [] (acc : lst)
  | otherwise = elfList xs (stringToInt x : acc) lst

main = do
  -- Read the file contents
  contents <- readFile "1.in"

  -- Split the contents into a list of strings
  let line_lst = lines contents

  -- let numberStrings = elfList line_lst [] []
  --
  -- let sums = map sum numberStrings
  --
  -- let max_cal = foldr max 0 sums
  --
  -- print max_cal

  let max_cal2 = foldr (max . sum) 0 $ elfList line_lst [] []
  print max_cal2

  -- let sorted = sortBy (flip compare) sums
  --
  -- let max_three_cal = take 3 sorted
  --
  -- let sum_cal = sum max_three_cal
  --
  -- print sum_cal

  let sum_cal2 = sum . take 3 . sortBy (flip compare) . map sum $ elfList line_lst [] []
  print sum_cal2
