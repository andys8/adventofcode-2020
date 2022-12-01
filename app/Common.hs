module Common where

import Data.String (IsString, fromString)
import Data.Text (Text)
import Data.Text qualified as T

sshow :: (Show a, IsString s) => a -> s
sshow = fromString . show

textToInt :: Text -> Int
textToInt = read . T.unpack

intToText :: Int -> Text
intToText = T.pack . show
