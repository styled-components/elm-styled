module Main exposing (..)

import Html exposing (..)
import Styled exposing (..)
import Styled.Colors exposing (red, yellow, green)


light paint =
    styled div
        [ backgroundColor paint
        , borderRadius (percent 50)
        , display inlineBlock
        , height (px 60)
        , width (px 60)
        , margin (px 20)
        ]


trafficLight =
    div []
        [ light red [] []
        , light yellow [] []
        , light green [] []
        ]


main =
    trafficLight
