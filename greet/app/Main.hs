{-# LANGUAGE OverloadedStrings #-}

module Main where

import Text.Emoji
import HaskellSay (haskellSay)
import Data.Text hiding (map)
import EmojiQuotes
--import QuotesStore

main = do
     putStrLn ("Type in a number between 1 and " ++ show numberOfQuotes)
     index <- getLine
     case selectQuote (read index :: Int) of
       Just s -> putStrLn s
       _      -> putStrLn ("No quote found at index " ++ show index)
