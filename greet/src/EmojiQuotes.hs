{-# LANGUAGE OverloadedStrings #-}


module EmojiQuotes where

import Text.Emoji
import Data.Text hiding (length)
import QuotesStore

selectQuote :: Int -> Maybe String
selectQuote i = if  i > (length quotes)
                then Nothing
                else (fmap unpack (quotes !! i))

numberOfQuotes = length quotes
