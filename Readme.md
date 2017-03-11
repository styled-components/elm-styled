# Styled

Use typed Css inside you Elm files to style your Html elements.

```Elm
module Main exposing (..)

import Html
import Styled exposing (..)
import Styled.Colors exposing (pink, lightYellow)


title =
    styled Html.h1
        [ fontSize (Styled.em 1.5)
        , textAlign center
        , color pink
        , fontFamily monospace
        ]


wrapper =
    styled Html.div
        [ padding (Styled.em 4)
        , backgroundColor lightYellow
        ]


main =
    wrapper []
        [ title []
            [ Html.text "Hello World 💅" ]
        ]
```

This package is currently under development. If you want to help check out the issues and feel free to contact me ☺️.
