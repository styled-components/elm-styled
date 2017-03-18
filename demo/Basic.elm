module Main exposing (..)

import Html exposing (..)
import Styled exposing (..)
import Styled.Colors exposing (pink, lightYellow)


title =
    styled h1
        [ fontSize (Styled.em 1.5)
        , textAlign center
        , color pink
        , fontFamily monospace
        ]


wrapper =
    styled div
        [ padding (Styled.em 4)
        , backgroundColor lightYellow
        ]


main =
    wrapper []
        [ title []
            [ text "Hello World, this is my first styled function 💅" ]
        ]
