main :: IO ()
translate :: String -> Int
translate "A" = 1
translate "X" = 1
translate "B" = 2
translate "Y" = 2
translate "C" = 3
translate "Z" = 3

outcome :: (Int, Int) -> Int
outcome (1, 3) = 0 + 3
outcome (3, 1) = 6 + 1
outcome (a, b)
  | a > b = 0 + b
  | a == b = 3 + b
  | a < b = 6 + b

mkmove :: (Int, Int) -> (Int, Int)
mkmove (1, 1) = (1, 3)
mkmove (3, 3) = (3, 1)
mkmove (a, b)
  | b == 1 = (a, a - 1)
  | b == 2 = (a, a)
  | b == 3 = (a, a + 1)

main = do
  -- Read the file contents
  contents <- readFile "1.in"

  -- Split the contents into a list of strings
  let line_lst = lines contents

  let strings = map words line_lst

  let scores = sum $ map (\[a, b] -> outcome (translate a, translate b)) strings

  print scores

  let scores_2 = sum $ map (\[a, b] -> outcome $ mkmove (translate a, translate b)) strings

  print scores_2
