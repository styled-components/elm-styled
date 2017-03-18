module Main exposing (..)

import Html exposing (div, text)
import Styled exposing (..)
import Styled.Colors exposing (white, pink)


button =
    styled Html.button
        [ backgroundColor white
        , color pink
        , fontSize (Styled.em 1)
        , margin (Styled.em 1)
        , padding2 (Styled.em 0.25) (Styled.em 1)
        , border (px 2) solid pink
        , borderRadius (px 3)
        ]


primaryButton =
    styled button
        [ backgroundColor pink
        , color white
        ]


main =
    div
        []
        [ button [] [ text "Normal" ]
        , primaryButton [] [ text "Primary" ]
        ]
