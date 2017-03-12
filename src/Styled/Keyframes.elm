module Styled.Keyframes
    exposing
        ( keyframes
        )

{-|

If you want to do custom animations you should use the keyframes function and use the returning value as animationName. This way keyframes are scoped as well.

@docs keyframes

-}

import Internal exposing (createHash, concatDeclaration)
import Native.Css
import Styled.Types exposing (..)


createKeyframeStep : ( Int, List Rule ) -> String
createKeyframeStep ( step, rules ) =
    List.map concatDeclaration rules
        |> String.join " "
        |> (\cssRules -> (toString step) ++ "% {" ++ cssRules ++ "}")


{-|
    keyframes [ ( <step>, <rules> ) ]

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
-}
keyframes : List ( Int, List Rule ) -> Keyframes {}
keyframes steps =
    let
        keyframesName =
            createHash steps

        cssSteps =
            List.map createKeyframeStep steps
                |> String.join " "

        css =
            "@keyframes "
                ++ keyframesName
                ++ " { "
                ++ cssSteps
                ++ " } "

        injectedCss =
            Native.Css.inject keyframesName css
    in
        { value = keyframesName
        , keyframes = Compatible
        }
