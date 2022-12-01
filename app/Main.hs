module Main where

import Data.Text (Text)
import Data.Text qualified as T
import Data.Text.IO qualified as T
import Day01
import System.Environment (getArgs)

main :: IO ()
main =
    getArgs >>= \case
        [puzzle] -> execute $ T.pack puzzle
        _ -> failToStart
  where
    execute puzzle =
        case getSolution puzzle of
            Nothing -> failToStart
            Just runSolution -> do
                let file = T.unpack $ "input/" <> puzzle <> ".txt"
                input <- T.readFile file
                T.putStrLn $ runSolution input
    failToStart = error "The puzzle needs to be passed e.g. '01-2'"

getSolution :: Text -> Maybe (Text -> Text)
getSolution day = case day of
    "01-1" -> Just day1part1
    "01-2" -> Just day1part2
    _ -> Nothing
