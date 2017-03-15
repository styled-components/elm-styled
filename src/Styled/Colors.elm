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

# Alias
@docs lightGrey, grey, darkGrey

-}

import Styled exposing (hex)
import Styled.Types exposing (Color)


{-| <img src="https://dummyimage.com/504x40/ffa8a8/ffa8a8.png">
-}
lightRed : Color {}
lightRed =
    hex "ffa8a8"


{-| <img src="https://dummyimage.com/504x40/f03e/f03e.png">
-}
red : Color {}
red =
    hex "f03e3e"


{-| <img src="https://dummyimage.com/504x40/c92a2a/c92a2a.png">
-}
darkRed : Color {}
darkRed =
    hex "c92a2a"


{-| <img src="https://dummyimage.com/504x40/faa2c1/faa2c1.png">
-}
lightPink : Color {}
lightPink =
    hex "faa2c1"


{-| <img src="https://dummyimage.com/504x40/d6336/d6336.png">
-}
pink : Color {}
pink =
    hex "d6336c"


{-| <img src="https://dummyimage.com/504x40/a61e4d/a61e4d.png">
-}
darkPink : Color {}
darkPink =
    hex "a61e4d"


{-| <img src="https://dummyimage.com/504x40/e599f7/e599f7.png">
-}
lightGrape : Color {}
lightGrape =
    hex "e599f7"


{-| <img src="https://dummyimage.com/504x40/ae3ec9/ae3ec9.png">
-}
grape : Color {}
grape =
    hex "ae3ec9"


{-| <img src="https://dummyimage.com/504x40/862e9c/862e9c.png">
-}
darkGrape : Color {}
darkGrape =
    hex "862e9c"


{-| <img src="https://dummyimage.com/504x40/b197fc/b197fc.png">
-}
lightViolet : Color {}
lightViolet =
    hex "b197fc"


{-| <img src="https://dummyimage.com/504x40/7048e8/7048e8.png">
-}
violet : Color {}
violet =
    hex "7048e8"


{-| <img src="https://dummyimage.com/504x40/5f3dc4/5f3dc4.png">
-}
darkViolet : Color {}
darkViolet =
    hex "5f3dc4"


{-| <img src="https://dummyimage.com/504x40/91a7ff/91a7ff.png">
-}
lightIndigo : Color {}
lightIndigo =
    hex "91a7ff"


{-| <img src="https://dummyimage.com/504x40/4263eb/4263eb.png">
-}
indigo : Color {}
indigo =
    hex "4263eb"


{-| <img src="https://dummyimage.com/504x40/364fc7/364fc7.png">
-}
darkIndigo : Color {}
darkIndigo =
    hex "364fc7"


{-| <img src="https://dummyimage.com/504x40/72c3fc/72c3fc.png">
-}
lightBlue : Color {}
lightBlue =
    hex "72c3fc"


{-| <img src="https://dummyimage.com/504x40/1c7cd/1c7cd.png">
-}
blue : Color {}
blue =
    hex "1c7cd6"


{-| <img src="https://dummyimage.com/504x40/1862ab/1862ab.png">
-}
darkBlue : Color {}
darkBlue =
    hex "1862ab"


{-| <img src="https://dummyimage.com/504x40/66d9e8/66d9e8.png">
-}
lightCyan : Color {}
lightCyan =
    hex "66d9e8"


{-| <img src="https://dummyimage.com/504x40/1098a/1098a.png">
-}
cyan : Color {}
cyan =
    hex "1098ad"


{-| <img src="https://dummyimage.com/504x40/0b7285/0b7285.png">
-}
darkCyan : Color {}
darkCyan =
    hex "0b7285"


{-| <img src="https://dummyimage.com/504x40/63e6be/63e6be.png">
-}
lightTeal : Color {}
lightTeal =
    hex "63e6be"


{-| <img src="https://dummyimage.com/504x40/0ca67/0ca67.png">
-}
teal : Color {}
teal =
    hex "0ca678"


{-| <img src="https://dummyimage.com/504x40/087f5b/087f5b.png">
-}
darkTeal : Color {}
darkTeal =
    hex "087f5b"


{-| <img src="https://dummyimage.com/504x40/8ce99a/8ce99a.png">
-}
lightGreen : Color {}
lightGreen =
    hex "8ce99a"


{-| <img src="https://dummyimage.com/504x40/37b24d/37b24d.png">
-}
green : Color {}
green =
    hex "37b24d"


{-| <img src="https://dummyimage.com/504x40/2b8a3e/2b8a3e.png">
-}
darkGreen : Color {}
darkGreen =
    hex "2b8a3e"


{-| <img src="https://dummyimage.com/504x40/c0eb75/c0eb75.png">
-}
lightLime : Color {}
lightLime =
    hex "c0eb75"


{-| <img src="https://dummyimage.com/504x40/74b81/74b81.png">
-}
lime : Color {}
lime =
    hex "74b816"


{-| <img src="https://dummyimage.com/504x40/5c940d/5c940d.png">
-}
darkLime : Color {}
darkLime =
    hex "5c940d"


{-| <img src="https://dummyimage.com/504x40/ffe066/ffe066.png">
-}
lightYellow : Color {}
lightYellow =
    hex "ffe066"


{-| <img src="https://dummyimage.com/504x40/f59f00/f59f00.png">
-}
yellow : Color {}
yellow =
    hex "f59f00"


{-| <img src="https://dummyimage.com/504x40/e67700/e67700.png">
-}
darkYellow : Color {}
darkYellow =
    hex "e67700"


{-| <img src="https://dummyimage.com/504x40/ffc078/ffc078.png">
-}
lightOrange : Color {}
lightOrange =
    hex "ffc078"


{-| <img src="https://dummyimage.com/504x40/f76707/f76707.png">
-}
orange : Color {}
orange =
    hex "f76707"


{-| <img src="https://dummyimage.com/504x40/d9480f/d9480f.png">
-}
darkOrange : Color {}
darkOrange =
    hex "d9480f"


{-| <img src="https://dummyimage.com/504x40/fff/fff.png">
-}
white : Color {}
white =
    hex "fff"


{-| <img src="https://dummyimage.com/504x40/dee2e6/dee2e6.png">
-}
lightGray : Color {}
lightGray =
    hex "dee2e6"


{-| <img src="https://dummyimage.com/504x40/495057/495057.png">
-}
gray : Color {}
gray =
    hex "495057"


{-| <img src="https://dummyimage.com/504x40/212529/212529.png">
-}
darkGray : Color {}
darkGray =
    hex "212529"


{-| <img src="https://dummyimage.com/504x40/000/000.png">
-}
black : Color {}
black =
    hex "000"


{-| <img src="https://dummyimage.com/504x40/dee2e6/dee2e6.png">
-}
lightGrey : Color {}
lightGrey =
    lightGray


{-| <img src="https://dummyimage.com/504x40/495057/495057.png">
-}
grey : Color {}
grey =
    gray


{-| <img src="https://dummyimage.com/504x40/212529/212529.png">
-}
darkGrey : Color {}
darkGrey =
    darkGray
