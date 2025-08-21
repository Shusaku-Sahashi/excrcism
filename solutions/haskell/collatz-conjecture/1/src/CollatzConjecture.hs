module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz n 
  | n <= 0 = Nothing
  | otherwise = Just $ helper n 0
  where 
    helper 1 steps = steps
    helper k steps
      | even k    = helper (k `div` 2) (steps + 1)
      | otherwise = helper (3 * k + 1) (steps + 1)