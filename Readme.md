<a href="https://github.com/styled-components/elm-styled">
    <img alt="elm-styled logo" src="https://cdn.rawgit.com/styled-components/elm-styled/f515f0cc/assets/logo.png" height="150px" />
</a>

Use typed CSS inside your Elm files to style your Html elements.

```
elm-package install styled-components/elm-styled
```

# Usage

## Basic

This creates two Elm functions, title and wrapper.

```elm
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
```

You render them like every other Elm node.


```elm
main =
    wrapper []
        [ title []
            [ text "Hello World, this is my first styled function 💅" ]
        ]
```

<div align="center">
    <img alt="Screenshot of the above code ran in a browser 💅" src="https://i.imgur.com/2NumaGu.jpg" width="743px" />
</div>

## Overriding Styles

We can create a simple button function and using this function to create a new styled function. The new styled function will have all of the styles from both styled functions.

```elm
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
```

<div align="center">
    <img alt="Screenshot of the above code ran in a browser 💅" src="https://i.imgur.com/ihYenDg.jpg" width="250px" />
</div>

## Dynamic Styles

If you want to have dynamic styles you can create a function which will return a styled function.

```elm
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
```

<div align="center">
    <img alt="Screenshot of the above code ran in a browser 💅" src="https://i.imgur.com/cSVnQSz.jpg" width="302px" />
</div>

## Animations

CSS animations with @keyframes aren't scoped to a single function but you still don't want them to be global. This is why we export a keyframes helper which will generate a unique name for your keyframes. You can then use that unique name throughout your app.

```elm
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
        [ display inlineBlock
        , animationName spin
        , animationDuration (Styled.s 2)
        , animationTimingFunction linear
        , animationIterationCount infinite
        ]


main =
    loader [] [ text "< 💅 >" ]
```

<div align="center">
    <img alt="Screenshot of the above code ran in a browser 💅" src="https://zippy.gfycat.com/EmbellishedWelllitAyeaye.gif" width="324px" />
</div>
