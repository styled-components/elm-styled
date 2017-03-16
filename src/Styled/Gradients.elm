module Styled.Gradients exposing (..)

{-|

This module is used to create CSS gradients.

# Color Stops
@docs stop, stop2

# Linear Gradient
@docs linearGradient, repeatingLinearGradient

# Radial Gradient
@docs radialGradient, repeatingRadialGradient

## Shape
@docs plainCircle, circle, plainEllipse, ellipse

## Extent Keyword
@docs closestSide, closestCorner, farthestSide, farthestCorner

## Position
@docs (@)

-}

import Styled.Types exposing (..)


{-| Representing a fixed color at a precise position, this value is composed by a <color> value.

    stop red

-}
stop : Color compatible -> ColorStop {}
stop color =
    { value = color.value
    , colorStop = Compatible
    }


{-| Representing a fixed color at a precise position, this value is composed by a <color> value, followed by a stop position (either a <percentage> or a <length> along the virtual gradient ray). A percentage of 0%, or a length of 0, represents the center of the gradient, the value 100% of the intersection of the ending shape with the virtual gradient ray. Percentage values in-between are linearly positioned on the gradient ray.

    stop2 red (percent 50)

-}
stop2 : Color compatibleA -> Length_Percentage compatibleB -> ColorStop {}
stop2 color position =
    { value = color.value ++ " " ++ position.value
    , colorStop = Compatible
    }


{-| The `linearGradient` function creates an <image> which represents a linear gradient of colors. The result of this function is an object of the CSS <gradient> data type. Like any other gradient, a CSS linear gradient is not a CSS <color> but an image with no intrinsic dimensions; that is, it has neither natural or preferred size, nor ratio. Its concrete size will match the size of the element it applies to.

    linearGradient (deg 90)
        [ stop green
        , stop blue
        ]

-}
linearGradient :
    Angle compatibleA
    -> List (ColorStop compatibleB)
    -> Gradient {}
linearGradient angle colorStops =
    let
        stops =
            colorStops
                |> List.map .value
                |> String.join ", "

        value =
            "linear-gradient("
                ++ angle.value
                ++ ", "
                ++ stops
                ++ ")"
    in
        { value = value
        , gradient = Compatible
        , image = Compatible
        }


{-| The `repeatingLinearGradient` function creates an <image> consisting of repeating gradients. It works similarly to the basic linear gradients as described by [`linearGradient`](#linearGradient), and takes the same arguments. However, it automatically repeats the color stops infinitely in both directions. The color stops' positions shift by multiples of the length of a basic linear gradient (the difference between the last color stops' position and the first).

    repeatingLinearGradient (deg 90)
        [ stop2 green (px 5)
        , stop2 blue (px 10)
        ]
    )

-}
repeatingLinearGradient :
    Angle compatibleA
    -> List (ColorStop compatibleB)
    -> Gradient {}
repeatingLinearGradient angle colorStops =
    let
        gradient =
            linearGradient angle colorStops

        value =
            "repeating-" ++ gradient.value
    in
        { gradient | value = value }


{-| The `radialGradient` function creates an <image> which represents a gradient of colors radiating from an origin, the center of the gradient. The result of this function is an object of the CSS <gradient> data type.

    radialGradient (plainCircle)
        [ stop red
        , stop blue
        ]

    radialGradient (plainCircle @ ( px 10, px 10 ))
        [ stop red
        , stop blue
        ]

    radialGradient (plainCircle |> closestSide)
        [ stop red
        , stop blue
        ]

    radialGradient (plainCircle |> closestSide @ ( px 10, px 10 ))
        [ stop red
        , stop blue
        ]

-}
radialGradient :
    Shape compatibleA
    -> List (ColorStop compatibleB)
    -> Gradient {}
radialGradient shape colorStops =
    let
        stops =
            colorStops
                |> List.map .value
                |> String.join ", "

        value =
            "radial-gradient("
                ++ shape.value
                ++ ", "
                ++ stops
                ++ ")"
    in
        { value = value
        , gradient = Compatible
        , image = Compatible
        }


{-| This works similarly to the standard radial gradients as described by [`radialGradient`](#radialGradient), but it automatically repeats the color stops infinitely in both directions, with their positions shifted by multiples of the difference between the last color stop's position and the first one's position.

    reapeatingRadialGradient (plainCircle |> closestSide @ ( px 10, px 10 ))
        [ stop red
        , stop blue
        ]

-}
repeatingRadialGradient :
    Shape compatibleA
    -> List (ColorStop compatibleB)
    -> Gradient {}
repeatingRadialGradient shape colorStops =
    let
        gradient =
            radialGradient shape colorStops

        value =
            "repeating-" ++ gradient.value
    in
        { gradient | value = value }


{-| The gradient's shape is a circle with constant radius.

    plainCircle

-}
plainCircle : Shape {}
plainCircle =
    { value = "circle"
    , shape = Compatible
    }


{-| The gradient's shape is a circle with given constant radius.

    circle (px 10)

-}
circle : Length_Percentage compatible -> Shape {}
circle radius =
    { value = "circle " ++ radius.value
    , shape = Compatible
    }


{-| The gradient's shape is an axis-aligned ellipse.

    plainEllipse

-}
plainEllipse : Shape {}
plainEllipse =
    { value = "ellipse"
    , shape = Compatible
    }


{-| The gradient's shape is an axis-aligned ellipse with a given width and height.

    ellipse (px 10) (px 100)

-}
ellipse :
    Length_Percentage compatibleA
    -> Length_Percentage compatibleB
    -> Shape {}
ellipse width height =
    { value =
        "ellipse "
            ++ width.value
            ++ " "
            ++ height.value
    , shape = Compatible
    }


{-| The gradient's ending shape meets the side of the box closest to its center (for circles) or meets both the vertical and horizontal sides closest to the center (for ellipses).

    circle |> closestSide

-}
closestSide : Shape compatible -> Shape {}
closestSide shape =
    { value = shape.value ++ " closest-side"
    , shape = Compatible
    }


{-| The gradient's ending shape is sized so it exactly meets the closest corner of the box from its center.

    circle |> closestCorner

-}
closestCorner : Shape compatible -> Shape {}
closestCorner shape =
    { value = shape.value ++ " closest-corner"
    , shape = Compatible
    }


{-| Similar to closest-side, except the ending shape is sized to meet the side of the box farthest from its center (or vertical and horizontal sides).

    circle |> farthestSide

-}
farthestSide : Shape compatible -> Shape {}
farthestSide shape =
    { value = shape.value ++ " farthest-side"
    , shape = Compatible
    }


{-| The gradient's ending shape is sized so it exactly meets the farthest corner of the box from its center.

    circle |> farthestCorner

-}
farthestCorner : Shape compatible -> Shape {}
farthestCorner shape =
    { value = shape.value ++ " farthest-corner"
    , shape = Compatible
    }


{-| The position of the gradient's center.

    circle @ (px 10, px 10)

-}
(@) :
    Shape compatible
    -> ( Position compatibleA, Position compatibleB )
    -> Shape {}
(@) shape ( positionX, positionY ) =
    { value =
        shape.value
            ++ " at "
            ++ positionX.value
            ++ " "
            ++ positionY.value
    , shape = Compatible
    }



{- Give @ the same precedence as |> so you can write circle |> closestSide @ (px 10, px 10) -}


infixl 0 @
