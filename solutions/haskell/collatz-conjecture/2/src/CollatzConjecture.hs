module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz n 
  | n > 0     = Just $ countSteps n
  | otherwise = Nothing
  where 
    countSteps = toInteger . length . takeWhile (/=1) . iterate nextStep
    nextStep n = if even n then n `div` 2 else n * 3 + 1
