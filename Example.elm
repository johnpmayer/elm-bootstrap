
module Example where

import Bootstrap (..)
import Html (..)
import Graphics.Input (..)

i : Input String
i = input ""

h : Html
h = formControl { controlType = TextInput, handle = i.handle }

main = toElement 100 100 h
