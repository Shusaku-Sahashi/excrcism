module ReverseString (reverseString) where
import Data.Foldable (Foldable(foldl'))

reverseString :: String -> String
reverseString = foldl' (flip (:)) ""
