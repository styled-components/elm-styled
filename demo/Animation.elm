module Main exposing (..)

import Html exposing (..)
import Styled exposing (..)
import Styled.Keyframes exposing (keyframes)
import Styled.Transforms exposing (rotate)
import Styled.Timings exposing (linear)


spin =
    keyframes
        [ ( 0
          , [ transform (rotate (deg 0))
            ]
          )
        , ( 100
          , [ transform (rotate (deg 360))
            ]
          )
        ]


loader =
    styled div
        [ margin (Styled.rem 2)
        , display inlineBlock
        , animationName spin
        , animationDuration (Styled.s 2)
        , animationTimingFunction linear
        , animationIterationCount infinite
        ]


main =
    loader [] [ text "[ 💅 ]" ]
