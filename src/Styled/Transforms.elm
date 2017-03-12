module Styled.Transforms
    exposing
        ( matrix
        , matrix3d
        , perspective
        , rotate
        , rotate3d
        , rotateX
        , rotateY
        , rotateZ
        , scale
        , scale2
        , scale3d
        , scaleX
        , scaleY
        , scaleZ
        , skew
        , skew2
        , skewX
        , skewY
        , translate
        , translate2
        , translate3d
        , translateX
        , translateY
        , translateZ
        )

{-|

# Transform Function
@docs matrix, matrix3d, perspective, rotate, rotate3d, rotateX, rotateY, rotateZ, scale, scale2, scale3d, scaleX, scaleY, scaleZ, skew, skew2, skewX, skewY, translate, translate2, translate3d, translateX, translateY, translateZ

-}

import Styled.Types exposing (..)


createTransformFunction : String -> TransformFunction {}
createTransformFunction value =
    { value = value
    , transformFunction = Compatible
    }


{-| The [`matrix`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function/matrix) function specifies a homogeneous 2D transformation matrix comprised of the specified six values. The constant values of such matrices are implied and not passed as parameters; the other parameters are described in the column-major order.
`matrix a b c d tx ty` is a shorthand for `matrix3d a b 0 0 c d 0 0 0 0 1 0 tx ty 0 1`.

    matrix <a> <b> <c> <d> <tx> <ty>

    matrix 1 2 3 4 5 6

-}
matrix :
    number
    -> number
    -> number
    -> number
    -> number
    -> number
    -> TransformFunction {}
matrix a b c d tx ty =
    let
        values =
            [ a, b, c, d, tx, ty ]
                |> List.map toString
                |> String.join ", "
    in
        createTransformFunction ("matrix(" ++ values ++ ")")


{-| The [`matrix3d`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function/matrix3d) function describes a 3D transform as a 4x4 homogeneous matrix. The 16 parameters are described in the column-major order.

    matrix3d <a1> <b1> <c1> <d1> <a2> <b2> <c2> <d2> <a3> <b3> <c3> <d3> <a4> <b4> <c4> <d4>

    matrix3d 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1

-}
matrix3d :
    number
    -> number
    -> number
    -> number
    -> number
    -> number
    -> number
    -> number
    -> number
    -> number
    -> number
    -> number
    -> number
    -> number
    -> number
    -> number
    -> TransformFunction {}
matrix3d a1 b1 c1 d1 a2 b2 c2 d2 a3 b3 c3 d3 a4 b4 c4 d4 =
    let
        values =
            [ a1
            , b1
            , c1
            , d1
            , a2
            , b2
            , c2
            , d2
            , a3
            , b3
            , c3
            , d3
            , a4
            , b4
            , c4
            , d4
            ]
                |> List.map toString
                |> String.join ", "
    in
        createTransformFunction ("matrix3d(" ++ values ++ ")")


{-| The [perspective`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function/perspective) function defines the distance between the z = 0 plane and the user in order to give to the 3D-positioned element some perspective. Each 3D element with z > 0 becomes larger; each 3D-element with z < 0 becomes smaller. The strength of the effect is determined by the value of this property.

    perspective (px 17)

-}
perspective : Length compatible -> TransformFunction {}
perspective length =
    createTransformFunction ("perspective(" ++ length.value ++ ")")


{-| The [`rotate`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function/rotate) function defines a transformation that moves the element around a fixed point (as specified by the transform-origin property) without deforming it. The amount of movement is defined by the specified angle; if positive, the movement will be clockwise, if negative, it will be counter-clockwise. A rotation by 180° is called point reflection.

    rotate (turn 0.5)

-}
rotate : Angle compatible -> TransformFunction {}
rotate angle =
    createTransformFunction ("rotate(" ++ angle.value ++ ")")


{-| The [`rotate3d`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function/rotate3d) function defines a transformation that moves the element around a fixed axis without deforming it. The amount of movement is defined by the specified angle; if positive, the movement will be clockwise, if negative, it will be counter-clockwise.In opposition to rotations in the plane, the composition of 3D rotations is usually not commutative; it means that the order in which the rotations are applied is crucial.

    rotate3d <x> <y> <z> <angle>

    rotate3d 1 2 3 (deg 10)

-}
rotate3d :
    number
    -> number
    -> number
    -> Angle compatible
    -> TransformFunction {}
rotate3d x y z angle =
    let
        values =
            [ x, y, z ]
                |> List.map toString
                |> String.join ", "
    in
        createTransformFunction ("rotate3d(" ++ values ++ ", " ++ angle.value ++ ")")


{-| The [`rotateX`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function/rotateX) function defines a transformation that moves the element around the abscissa without deforming it. The amount of movement is defined by the specified angle; if positive, the movement will be clockwise, if negative, it will be counter-clockwise. The axis of rotation passes by the origin, defined by transform-origin CSS property.
`rotateX a` is a shorthand for `rotate3d 1 0 0 a`.

    rotateX (deg 10)

-}
rotateX : Angle compatible -> TransformFunction {}
rotateX angle =
    createTransformFunction ("rotateX(" ++ angle.value ++ ")")


{-| The [`rotateY`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function/rotateY) function defines a transformation that moves the element around the ordinate without deforming it. The amount of movement is defined by the specified angle; if positive, the movement will be clockwise, if negative, it will be counter-clockwise. The axis of rotation passes by the origin, defined by transform-origin CSS property.
`rotateY a` is a shorthand for `rotate3d 0 1 0 a`.

    rotateY (deg 10)

-}
rotateY : Angle compatible -> TransformFunction {}
rotateY angle =
    createTransformFunction ("rotateY(" ++ angle.value ++ ")")


{-| The [`rotateZ`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function/rotateZ) function defines a transformation that moves the element around the z-axis without deforming it. The amount of movement is defined by the specified angle; if positive, the movement will be clockwise, if negative, it will be counter-clockwise. The axis of rotation passes by the origin, defined by transform-origin CSS property.
`rotateZ a` is a shorthand for `rotate3D 0 0 1 a`.

    rotateZ (deg 10)

-}
rotateZ : Angle compatible -> TransformFunction {}
rotateZ angle =
    createTransformFunction ("rotateZ(" ++ angle.value ++ ")")


{-| The [`scale`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function/scale) function modifies the size of the element. It can either augment or decrease its size and as the amount of scaling is defined by a vector, it can do so more in one direction than in another one. This transformation is characterized by a vector whose coordinates define how much scaling is done in each direction. If both coordinates of the vector are equal, the scaling is uniform, or isotropic, and the shape of the element is preserved. In that case, the scaling function defines a homothetic transformation.

    scale <sx>

    scale 2

-}
scale : number -> TransformFunction {}
scale sx =
    createTransformFunction ("scale(" ++ (toString sx) ++ ")")


{-| The [`scale`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function/scale) function modifies the size of the element. It can either augment or decrease its size and as the amount of scaling is defined by a vector, it can do so more in one direction than in another one. This transformation is characterized by a vector whose coordinates define how much scaling is done in each direction. If both coordinates of the vector are equal, the scaling is uniform, or isotropic, and the shape of the element is preserved. In that case, the scaling function defines a homothetic transformation.

    scale2 <sx> <sy>

    scale2 2 0.5

-}
scale2 : number -> number -> TransformFunction {}
scale2 sx sy =
    let
        values =
            [ sx, sy ]
                |> List.map toString
                |> String.join ", "
    in
        createTransformFunction ("scale(" ++ values ++ ")")


{-| The [`scale3d`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function/scale3d) function modifies the size of an element. Because the amount of scaling is defined by a vector, it can resize different dimensions at different scales. This transformation is characterized by a vector whose coordinates define how much scaling is done in each direction. If all three coordinates of the vector are equal, the scaling is uniform, or isotropic, and the shape of the element is preserved. In that case, the scaling function defines a homothetic transformation.

    scale3d <sx> <sy> <sz>

    scale3d 2.5 1.2 0.3

-}
scale3d : number -> number -> number -> TransformFunction {}
scale3d sx sy sz =
    let
        values =
            [ sx, sy, sz ]
                |> List.map toString
                |> String.join ", "
    in
        createTransformFunction ("scale3d(" ++ values ++ ")")


{-| The [`scaleX`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function/scaleX) function modifies the abscissa of each element point by a constant factor, except if this scale factor is 1, in which case the function is the identity transform. The scaling is not isotropic and the angles of the element are not conserved. `scaleX -1` defines an axial symmetry with a vertical axis passing by the origin (as specified by the [`transformOrigin`](#transformOrigin) property).
`scaleX sx` is a shorthand for `scale sx 1` or for `scale3d sx 1 1.

    scaleX 2

-}
scaleX : number -> TransformFunction {}
scaleX scale =
    createTransformFunction ("scaleX(" ++ (toString scale) ++ ")")


{-| The [`scaleY`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function/scaleY) function modifies the ordinate of each element point by a constant factor except if this scale factor is 1, in which case the function is the identity transform. The scaling is not isotropic and the angles of the element are not conserved. `scaleY -1` defines an axial symmetry with a horizontal axis passing by the origin (as specified by the [`transformOrigin`](#transformOrigin) property).
`scaleY sy` is a shorthand for `scale 1 sy` or for `scale3d 1 sy 1`.

    scaleY 0.5

-}
scaleY : number -> TransformFunction {}
scaleY scale =
    createTransformFunction ("scaleY(" ++ (toString scale) ++ ")")


{-| The [`scaleZ`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function/scaleZ) function modifies the z-coordinate of each element point by a constant factor, except if this scale factor is 1, in which case the function is the identity transform. The scaling is not isotropic and the angles of the element are not conserved. `scaleZ -1` defines an axial symmetry along the z-axis passing by the origin (as specified by the [`transformOrigin`](#transformOrigin) property).
`scaleZ sz` is a shorthand for `scale3d 1 1 sz`.

    scaleZ 0.3

-}
scaleZ : number -> TransformFunction {}
scaleZ scale =
    createTransformFunction ("scaleZ(" ++ (toString scale) ++ ")")


{-| The [`skew`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function/skew) function is a shear mapping, or transvection, distorting each point of an element by a certain angle in each direction. It is done by increasing each coordinate by a value proportionate to the specified angle and to the distance to the origin. The more far from the origin, the more away the point is, the greater will be the value added to it.

    skew <ax>

    skew (deg 30)

-}
skew : Angle compatible -> TransformFunction {}
skew ax =
    createTransformFunction ("skew(" ++ ax.value ++ ")")


{-| The [`skew`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function/skew) function is a shear mapping, or transvection, distorting each point of an element by a certain angle in each direction. It is done by increasing each coordinate by a value proportionate to the specified angle and to the distance to the origin. The more far from the origin, the more away the point is, the greater will be the value added to it.

    skew2 <ax> <ay>

    skew2 (deg 30) (deg 20)

-}
skew2 : Angle compatibleA -> Angle compatibleB -> TransformFunction {}
skew2 ax ay =
    createTransformFunction ("skew(" ++ ax.value ++ ", " ++ ay.value ++ ")")


{-| The [`skewX`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function/skewX) function is a horizontal shear mapping distorting each point of an element by a certain angle in the horizontal direction. It is done by increasing the abscissa coordinate by a value proportionate to the specified angle and to the distance to the origin. The more far from the origin, the more away the point is, the greater will be the value added to it.

    skewX (deg 30)

-}
skewX : Angle compatible -> TransformFunction {}
skewX angle =
    createTransformFunction ("skewX(" ++ angle.value ++ ")")


{-| The [`skewY`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function/skewY) function is a vertical shear mapping distorting each point of an element by a certain angle in the vertical direction. It is done by increasing the ordinate coordinate by a value proportionate to the specified angle and to the distance to the origin. The more far from the origin, the more away the point is, the greater will be the value added to it.

    skewY (rad 1.07)

-}
skewY : Angle compatible -> TransformFunction {}
skewY angle =
    createTransformFunction ("skewY(" ++ angle.value ++ ")")


{-| The [`translate`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function/translate) function moves the position of the element on the plane. This transformation is characterized by a vector whose coordinates define how much it moves in each direction.

    translate <tx>

    translate (px 12)

-}
translate : Length compatible -> TransformFunction {}
translate tx =
    createTransformFunction ("translate(" ++ tx.value ++ ")")


{-| The [`translate`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function/translate) function moves the position of the element on the plane. This transformation is characterized by a vector whose coordinates define how much it moves in each direction.

    translate2 <tx> <ty>

    translate2 (px 12) (rem 50)

-}
translate2 : Length compatibleA -> Length compatibleB -> TransformFunction {}
translate2 tx ty =
    createTransformFunction ("translate(" ++ tx.value ++ "," ++ ty.value ++ ")")


{-| The [`translate3d`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function/translate3d) function moves the position of the element in the 3D space. This transformation is characterized by a 3-dimension vector whose coordinates define how much it moves in each direction.

    translate3d <tx> <ty> <tz>

    translate3d (px 12) (rem 50) (em 3)

-}
translate3d :
    Length compatibleA
    -> Length compatibleB
    -> Length compatibleC
    -> TransformFunction {}
translate3d tx ty tz =
    createTransformFunction ("tanslate3d(" ++ tx.value ++ ", " ++ ty.value ++ ", " ++ tz.value ++ ")")


{-| The [`translateX`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function/translateX) function moves the element horizontally on the plane. This transformation is characterized by a <length> defining how much it moves horizontally.
`translateX tx` is a shortcut for `translate tx 0`.

    translateX (em 2)

-}
translateX : Length compatible -> TransformFunction {}
translateX length =
    createTransformFunction ("translateX(" ++ length.value ++ ")")


{-| The [`translateY`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function/translateY) function moves the element vertically on the plane. This transformation is characterized by a <length> defining how much it moves vertically.
`translateY ty` is a shortcut for `translate 0 ty`.

    translateY (px 10)

-}
translateY : Length compatible -> TransformFunction {}
translateY length =
    createTransformFunction ("translateY(" ++ length.value ++ ")")


{-| The [`translateZ`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function/translateZ) function moves the element along the z-axis of the 3D space. This transformation is characterized by a <length> defining how much it moves.
`translateZ tz` is a shorthand for `translate3d 0 0 tz`.

    translateZ (px 2)

-}
translateZ : Length compatible -> TransformFunction {}
translateZ length =
    createTransformFunction ("translateZ(" ++ length.value ++ ")")
