module Styled.Keyframes
    exposing
        ( keyframes
        )

{-|

If you want to do custom animations you should use the keyframes function and use the returning value as animationName. This way keyframes are scoped as well.

@docs keyframes

-}

import Internal
import Native.Css
import Styled.Types exposing (..)


createKeyframeStep : ( Int, List Rule ) -> String
createKeyframeStep ( step, rules ) =
    List.map Internal.concatDeclaration rules
        |> String.join " "
        |> (\cssRules ->
                (toString step)
                    ++ "% { "
                    ++ cssRules
                    ++ " } "
           )


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
            Internal.createHash "keyframes" steps

        cssSteps =
            List.map createKeyframeStep steps
                |> String.join " "

        css =
            "@keyframes "
                ++ keyframesName
                ++ " { "
                ++ cssSteps
                ++ " } "

        insertedCss =
            Native.Css.insert css
    in
        { value = keyframesName
        , keyframes = Compatible
        }
