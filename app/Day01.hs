module Day01 where

import Common
import Control.Arrow ((>>>))
import Data.List (sort)
import Data.List.Split
import Data.Text (Text)
import Data.Text qualified as T

day1part1 :: Text -> Text
day1part1 =
    T.lines
        >>> splitWhen (== "")
        >>> fmap (sum . fmap textToInt)
        >>> maximum
        >>> intToText

day1part2 :: Text -> Text
day1part2 =
    T.lines
        >>> splitWhen (== "")
        >>> fmap (sum . fmap textToInt)
        >>> sort
        >>> reverse
        >>> take 3
        >>> sum
        >>> intToText
