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

  let numberStrings = elfList line_lst [] []

  let sums = map sum numberStrings

  let max_cal = foldr max 0 sums

  -- Print the numbers
  print max_cal
