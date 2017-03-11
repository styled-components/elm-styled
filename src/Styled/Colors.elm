module Styled.Colors exposing (..)

{-|

A default set of colors to quickly use some colors.

Extracted from [Open Color](https://yeun.github.io/open-color/).

# Standard
@docs red, pink, grape, violet, indigo, blue, cyan, teal, green, lime, yellow, orange

# Light
@docs lightRed, lightPink, lightGrape, lightViolet, lightIndigo, lightBlue, lightCyan, lightTeal, lightGreen, lightLime, lightYellow, lightOrange

# Dark
@docs darkRed, darkPink, darkGrape, darkViolet, darkIndigo, darkBlue, darkCyan, darkTeal, darkGreen, darkLime, darkYellow, darkOrange

# Grays
@docs white, lightGray, gray, darkGray, black

# Greys
@docs lightGrey, grey, darkGrey

-}

import Styled exposing (hex)
import Styled.Types exposing (Color)


{-| -}
lightRed : Color {}
lightRed =
    hex "ffa8a8"


{-| -}
red : Color {}
red =
    hex "f03e3e"


{-| -}
darkRed : Color {}
darkRed =
    hex "c92a2a"


{-| -}
lightPink : Color {}
lightPink =
    hex "faa2c1"


{-| -}
pink : Color {}
pink =
    hex "d6336c"


{-| -}
darkPink : Color {}
darkPink =
    hex "a61e4d"


{-| -}
lightGrape : Color {}
lightGrape =
    hex "e599f7"


{-| -}
grape : Color {}
grape =
    hex "ae3ec9"


{-| -}
darkGrape : Color {}
darkGrape =
    hex "862e9c"


{-| -}
lightViolet : Color {}
lightViolet =
    hex "b197fc"


{-| -}
violet : Color {}
violet =
    hex "7048e8"


{-| -}
darkViolet : Color {}
darkViolet =
    hex "5f3dc4"


{-| -}
lightIndigo : Color {}
lightIndigo =
    hex "91a7ff"


{-| -}
indigo : Color {}
indigo =
    hex "4263eb"


{-| -}
darkIndigo : Color {}
darkIndigo =
    hex "364fc7"


{-| -}
lightBlue : Color {}
lightBlue =
    hex "72c3fc"


{-| -}
blue : Color {}
blue =
    hex "1c7cd6"


{-| -}
darkBlue : Color {}
darkBlue =
    hex "1862ab"


{-| -}
lightCyan : Color {}
lightCyan =
    hex "66d9e8"


{-| -}
cyan : Color {}
cyan =
    hex "1098ad"


{-| -}
darkCyan : Color {}
darkCyan =
    hex "0b7285"


{-| -}
lightTeal : Color {}
lightTeal =
    hex "63e6be"


{-| -}
teal : Color {}
teal =
    hex "0ca678"


{-| -}
darkTeal : Color {}
darkTeal =
    hex "087f5b"


{-| -}
lightGreen : Color {}
lightGreen =
    hex "8ce99a"


{-| -}
green : Color {}
green =
    hex "37b24d"


{-| -}
darkGreen : Color {}
darkGreen =
    hex "2b8a3e"


{-| -}
lightLime : Color {}
lightLime =
    hex "c0eb75"


{-| -}
lime : Color {}
lime =
    hex "74b816"


{-| -}
darkLime : Color {}
darkLime =
    hex "5c940d"


{-| -}
lightYellow : Color {}
lightYellow =
    hex "ffe066"


{-| -}
yellow : Color {}
yellow =
    hex "f59f00"


{-| -}
darkYellow : Color {}
darkYellow =
    hex "e67700"


{-| -}
lightOrange : Color {}
lightOrange =
    hex "ffc078"


{-| -}
orange : Color {}
orange =
    hex "f76707"


{-| -}
darkOrange : Color {}
darkOrange =
    hex "d9480f"


{-| -}
white : Color {}
white =
    hex "fff"


{-| -}
lightGray : Color {}
lightGray =
    hex "dee2e6"


{-| -}
gray : Color {}
gray =
    hex "495057"


{-| -}
darkGray : Color {}
darkGray =
    hex "212529"


{-| -}
black : Color {}
black =
    hex "000"


{-| -}
lightGrey : Color {}
lightGrey =
    lightGray


{-| -}
grey : Color {}
grey =
    gray


{-| -}
darkGrey : Color {}
darkGrey =
    darkGray
