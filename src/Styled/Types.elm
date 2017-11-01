module Styled.Types exposing (..)

{-|

These types are used internally to choose which value is compatible with which property. You shouldn't use the types in your code. Use this page to see which types are compatible.

# Property Types

## Animation Properties
@docs AnimationDirection, AnimationFillMode, AnimationIterationCount, AnimationPlayState

## Background Properties
@docs BackgroundAttachment, BackgroundClip, BackgroundOrigin, BackgroundRepeatShorthand, BackgroundRepeat, BackgroundSizeShorthand, BackgroundSize

## Border Properties
@docs BorderImageRepeat, BorderImageSlice, BorderImageWidth, BorderStyle

## Generated Content Properties
@docs Content

## Flexible Box Layout
@docs AlignContent, AlignItems, FlexDirection, FlexWrap, JustifyContent

## Font Properties
@docs FontFamily, FontStretch, FontStyle, FontVariantAlternates, FontVariantCaps, FontVariantEastAsian, FontVariantLigatures, FontVariantNumeric

## List Properties
@docs ListStylePosition, ListStyleType

## Multi-column Layout Properties
@docs ColumnFill, ColumnSpan

## Print Properties
@docs PageBreak, PageBreakInside

## Table Properties
@docs BorderCollapse, CaptionSide, EmptyCells, TableLayout

## Text Properties
@docs Direction, TextAlign, TextAlignLast, TextDecorationLine, TextDecorationStyle, TextOverflow, TextTransform, VerticalAlign, OverflowWrap, WhiteSpace, WordBreak

## Transform Properties
@docs BackfaceVisibility, TransformStyle

## Transition Properties
@docs TransitionProperty

## Visual Formatting Properties
@docs Display, Position_, Float_, Clear, Overflow, Resize, Visibility, Cursor, BoxSizing

# Value Types
@docs All_, Auto, Baseline, BorderBox, Both, Bottom_, Center, Collapse, ColorStop, ContentBox, Dashed, Dotted, Double, End, Fixed, FlexStart, FlexEnd, Hidden, Justify, Left_, None, Normal, Nowrap, PaddingBox, Repeat, Right_, Round, Scroll, Shape, Solid, Space, SpaceBetween, SpaceAround, SpaceEvenly, Start, StepsDirection, Stretch, Top_, Visible

# CSS Data Types
@docs Angle, Color, Gradient, Image, Integer, Length, Number, Percentage, Position, PositionShorthand, Str, Time, TimingFunction, TransformFunction, Url

## Combined Types
@docs Auto_Length_Percentage, Length_Percentage, Length_Number, Length_Number_Percentage, Number_Percentage

# Misc
@docs Compatible, Rule, Keyframes
-}

{-
   Misc
-}


{-| This type is used to check if a type is compatible to another type.
-}
type Compatible
    = Compatible


{-| -}
type Rule
    = Declaration String (List String) Bool
    | Selector String (List Rule)
    | Media String (List Rule)
    | Mixin (List Rule)


{-| -}
type alias Keyframes compatible =
    { compatible
        | value : String
        , keyframes : Compatible
    }



{-
   CSS Data Types
-}


{-| Represents the CSS data type [`<angle>`](https://developer.mozilla.org/en-US/docs/Web/CSS/angle).
-}
type alias Angle compatible =
    { compatible
        | value : String
        , angle : Compatible
    }


{-| Represents the CSS data type [`<color>`](https://developer.mozilla.org/en-US/docs/Web/CSS/color).
-}
type alias Color compatible =
    { compatible
        | value : String
        , color : Compatible
    }


{-| Represents the CSS data type [`<gradient>`](https://developer.mozilla.org/en-US/docs/Web/CSS/gradient).
-}
type alias Gradient compatible =
    { compatible
        | value : String
        , gradient : Compatible
        , image : Compatible
    }


{-| Represents the CSS data type [`<image>`](https://developer.mozilla.org/en-US/docs/Web/CSS/image).
-}
type alias Image compatible =
    { compatible
        | value : String
        , image : Compatible
    }


{-| Represents the CSS data type [`<integer>`](https://developer.mozilla.org/en-US/docs/Web/CSS/integer).
-}
type alias Integer compatible =
    { compatible
        | value : String
        , integer : Compatible
    }


{-| Represents the CSS data type [`<length>`](https://developer.mozilla.org/en-US/docs/Web/CSS/length).
-}
type alias Length compatible =
    { compatible
        | value : String
        , length : Compatible
        , position : Compatible
        , positionShorthand : Compatible
        , backgroundSize : Compatible
        , backgroundSizeShorthand : Compatible
        , borderImageWidth : Compatible
        , verticalAlign : Compatible
        , auto_length_percentage : Compatible
        , length_number : Compatible
        , length_number_percentage : Compatible
        , length_percentage : Compatible
    }


{-| Represents the CSS data type [`<number>`](https://developer.mozilla.org/en-US/docs/Web/CSS/number).
-}
type alias Number compatible =
    { compatible
        | value : String
        , number : Compatible
        , animationIterationCount : Compatible
        , borderImageSlice : Compatible
        , borderImageWidth : Compatible
        , length_number : Compatible
        , length_number_percentage : Compatible
        , number_percentage : Compatible
    }


{-| Represents the CSS data type [`<percentage>`](https://developer.mozilla.org/en-US/docs/Web/CSS/percentage).
-}
type alias Percentage compatible =
    { compatible
        | value : String
        , percentage : Compatible
        , position : Compatible
        , positionShorthand : Compatible
        , backgroundSize : Compatible
        , backgroundSizeShorthand : Compatible
        , borderImageSlice : Compatible
        , borderImageWidth : Compatible
        , verticalAlign : Compatible
        , auto_length_percentage : Compatible
        , length_number_percentage : Compatible
        , length_percentage : Compatible
        , number_percentage : Compatible
    }


{-| Represents the CSS data type [`<position>`](https://developer.mozilla.org/en-US/docs/Web/CSS/position).

    type Position
        = Length
        | Percentage

-}
type alias Position compatible =
    { compatible
        | value : String
        , position : Compatible
    }


{-| Represents the CSS data type [`<position>`](https://developer.mozilla.org/en-US/docs/Web/CSS/position).

    type PositionShorthand
        = Position
        | Center
        | Bottom_
        | Top_
        | Left_
        | Right_

-}
type alias PositionShorthand compatible =
    { compatible
        | value : String
        , positionShorthand : Compatible
    }


{-| Represents the CSS data type [`<string>`](https://developer.mozilla.org/en-US/docs/Web/CSS/string).
-}
type alias Str compatible =
    { compatible
        | value : String
        , string : Compatible
        , content : Compatible
        , transitionProperty : Compatible
    }


{-| Represents the CSS data type [`<time>`](https://developer.mozilla.org/en-US/docs/Web/CSS/time).
-}
type alias Time compatible =
    { compatible
        | value : String
        , time : Compatible
    }


{-| Represents the CSS data type [`<timing-function>`](https://developer.mozilla.org/en-US/docs/Web/CSS/timing-function).
-}
type alias TimingFunction compatible =
    { compatible
        | value : String
        , timingFunction : Compatible
    }


{-| Represents the CSS data type [`<transform-function>`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-function).

    type TransformFunction
        = TransformFunction
        | None
-}
type alias TransformFunction compatible =
    { compatible
        | value : String
        , transformFunction : Compatible
    }


{-| Represents the CSS data type [`<url>`](https://developer.mozilla.org/en-US/docs/Web/CSS/url).
-}
type alias Url compatible =
    { compatible
        | value : String
        , url : Compatible
        , image : Compatible
        , content : Compatible
    }



{-
   Combined Types
-}


{-|
    type Auto_Length_Percentage
        = Auto
        | Length
        | Percentage
-}
type alias Auto_Length_Percentage compatible =
    { compatible
        | value : String
        , auto_length_percentage : Compatible
    }


{-|
    type Length_Number
        = Length
        | Number
-}
type alias Length_Number compatible =
    { compatible
        | value : String
        , length_number : Compatible
    }


{-|
    type Length_Number
        = Length
        | Number
        | Percentage
-}
type alias Length_Number_Percentage compatible =
    { compatible
        | value : String
        , length_number_percentage : Compatible
    }


{-|
    type Length_Percentage
        = Length
        | Percentage
-}
type alias Length_Percentage compatible =
    { compatible
        | value : String
        , length_percentage : Compatible
    }


{-|
    type Number_Percentage
        = Number
        | Percentage
-}
type alias Number_Percentage compatible =
    { compatible
        | value : String
        , number_percentage : Compatible
    }



{-
   Property Types
-}
-- Animation Properties


{-|
    type AnimationDirection
        = AnimationDirection
        | Normal
-}
type alias AnimationDirection compatible =
    { compatible
        | value : String
        , animationDirection : Compatible
    }


{-|
    type AnimationFillMode
        = AnimationFillMode
        | None
        | Both
-}
type alias AnimationFillMode compatible =
    { compatible
        | value : String
        , animationFillMode : Compatible
    }


{-|
    type AnimationIterationCount
        = AnimationIterationCount
        | Number
-}
type alias AnimationIterationCount compatible =
    { compatible
        | value : String
        , animationIterationCount : Compatible
    }


{-| -}
type alias AnimationPlayState compatible =
    { compatible
        | value : String
        , animationPlayState : Compatible
    }



-- Background Properties


{-|
    type BackgroundAttachment
        = BackgroundAttachment
        | Fixed
        | Scroll
-}
type alias BackgroundAttachment compatible =
    { compatible
        | value : String
        , backgroundAttachment : Compatible
    }


{-|
    type BackgroundClip
        = BorderBox
        | PaddingBox
        | ContentBox
-}
type alias BackgroundClip compatible =
    { compatible
        | value : String
        , backgroundClip : Compatible
    }


{-|
    type BackgroundOrigin
        = BorderBox
        | PaddingBox
        | ContentBox
-}
type alias BackgroundOrigin compatible =
    { compatible
        | value : String
        , backgroundOrigin : Compatible
    }


{-|
    type BackgroundRepeatShorthand
        = BackgroundRepeatShorthand
        | Repeat
        | Round
-}
type alias BackgroundRepeatShorthand compatible =
    { compatible
        | value : String
        , backgroundRepeatShorthand : Compatible
    }


{-|
    type BackgroundRepeat
        = BackgroundRepeat
        | Repeat
        | Round
-}
type alias BackgroundRepeat compatible =
    { compatible
        | value : String
        , backgroundRepeat : Compatible
    }


{-|
    type BackgroundSizeShorthand
        = BackgroundSizeShorthand
        | BackgroundSize
        | Length
        | Percentage
-}
type alias BackgroundSizeShorthand compatible =
    { compatible
        | value : String
        , backgroundSizeShorthand : Compatible
    }


{-|
    type BackgroundSize
        = BackgroundSize
        | Length
        | Percentage

-}
type alias BackgroundSize compatible =
    { compatible
        | value : String
        , backgroundSize : Compatible
    }



-- Border Properties


{-|
    type BorderImageRepeat
        = Repeat
        | Round
        | Space
        | Stretch
-}
type alias BorderImageRepeat compatible =
    { compatible
        | value : String
        , borderImageRepeat : Compatible
    }


{-|
    type BorderImageSlice
        = BorderImageSlice
        | Number
        | Percentage
-}
type alias BorderImageSlice compatible =
    { compatible
        | value : String
        , borderImageSlice : Compatible
    }


{-|
    type BorderImageWidth
        = Length
        | Percentage
        | Number
        | Auto
-}
type alias BorderImageWidth compatible =
    { compatible
        | value : String
        , borderImageWidth : Compatible
    }


{-|
    type BorderStyle
        = BorderStyle
        | None
        | Hidden
-}
type alias BorderStyle compatible =
    { compatible
        | value : String
        , borderStyle : Compatible
    }



-- Generated Content Properties


{-|
    type Content
        = Content
        | Str
        | Url
-}
type alias Content compatible =
    { compatible
        | value : String
        , content : Compatible
    }



-- Flexible Box Layout


{-|
    type AlignContent
        = AlignContent
        | Center
        | FlexStart
        | FlexEnd

-}
type alias AlignContent compatible =
    { compatible
        | value : String
        , alignContent : Compatible
    }


{-|
    type AlignContent
        = SpaceBetween
        | SpaceAround
        | SpaceEvenly
        | Center
        | FlexStart
        | FlexEnd
        | Stretch
        | Baseline

-}
type alias AlignItems compatible =
    { compatible
        | value : String
        , alignItems : Compatible
    }


{-| -}
type alias FlexDirection compatible =
    { compatible
        | value : String
        , flexDirection : Compatible
    }


{-|
    type FlexWrap
        = FlexWrap
        | Nowrap
-}
type alias FlexWrap compatible =
    { compatible
        | value : String
        , flexWrap : Compatible
    }


{-|
    type JustifyContent
        = SpaceBetween
        | SpaceAround
        | SpaceEvenly
        | FlexStart
        | FlexEnd
        | Center
-}
type alias JustifyContent compatible =
    { compatible
        | value : String
        , justifyContent : Compatible
    }



--  Font Properties


{-| -}
type alias FontFamily compatible =
    { compatible
        | value : String
        , fontFamily : Compatible
    }


{-| -}
type alias FontStretch compatible =
    { compatible
        | value : String
        , fontStretch : Compatible
    }


{-| -}
type alias FontStyle compatible =
    { compatible
        | value : String
        , fontStyle : Compatible
    }


{-|
    type FontVariantAlternates
        = FontVariantAlternates
        | Normal
-}
type alias FontVariantAlternates compatible =
    { compatible
        | value : String
        , fontVariantAlternates : Compatible
    }


{-|
    type FontVariantCaps
        = FontVariantCaps
        | Normal
-}
type alias FontVariantCaps compatible =
    { compatible
        | value : String
        , fontVariantCaps : Compatible
    }


{-|
    type FontVariantEastAsian
        = FontVariantEastAsian
        | Normal
-}
type alias FontVariantEastAsian compatible =
    { compatible
        | value : String
        , fontVariantEastAsian : Compatible
    }


{-|
    type FontVariantLigatures
        = FontVariantLigatures
        | None
        | Normal
-}
type alias FontVariantLigatures compatible =
    { compatible
        | value : String
        , fontVariantLigatures : Compatible
    }


{-|
    type FontVariantNumeric
        = FontVariantNumeric
        | Normal
-}
type alias FontVariantNumeric compatible =
    { compatible
        | value : String
        , fontVariantNumeric : Compatible
    }



-- List Properties


{-| -}
type alias ListStylePosition compatible =
    { compatible
        | value : String
        , listStylePosition : Compatible
    }


{-| -}
type alias ListStyleType compatible =
    { compatible
        | value : String
        , listStyleType : Compatible
    }



-- Multi-column Layout Properties


{-|
    type ColumnFill
        = ColumnFill
        | Auto
-}
type alias ColumnFill compatible =
    { compatible
        | value : String
        , columnFill : Compatible
    }


{-|
    type ColumnSpan
        = None
        | All_
-}
type alias ColumnSpan compatible =
    { compatible
        | value : String
        , columnSpan : Compatible
    }



-- Print Properties


{-|
    type PageBreak
        = PageBreak
        | PageBreakInside
        | Auto
        | Left_
        | Right_
-}
type alias PageBreak compatible =
    { compatible
        | value : String
        , pageBreak : Compatible
    }


{-|
    type PageBreakInside
        = PageBreakInside
        | Auto
-}
type alias PageBreakInside compatible =
    { compatible
        | value : String
        , pageBreakInside : Compatible
    }



-- Table Properties


{-|
    type BorderCollapse
        = BorderCollapse
        | Collapse
-}
type alias BorderCollapse compatible =
    { compatible
        | value : String
        , borderCollapse : Compatible
    }


{-| -}
type alias CaptionSide compatible =
    { compatible
        | value : String
        , captionSide : Compatible
    }


{-| -}
type alias EmptyCells compatible =
    { compatible
        | value : String
        , emptyCells : Compatible
    }


{-|
    type TableLayout
        = Auto
        | Fixed
-}
type alias TableLayout compatible =
    { compatible
        | value : String
        , tableLayout : Compatible
    }



-- Text Properties


{-| -}
type alias Direction compatible =
    { compatible
        | value : String
        , direction : Compatible
    }


{-|
    type TextAlign
        = TextAlign
        | Left_
        | Right_
        | Center
        | Justify
-}
type alias TextAlign compatible =
    { compatible
        | value : String
        , textAlign : Compatible
    }


{-|
    type TextAlignLast
        = Auto
        | Start
        | End
        | Left_
        | Right_
        | Center
        | Justify
-}
type alias TextAlignLast compatible =
    { compatible
        | value : String
        , textAlignLast : Compatible
    }


{-|
    type TextDecorationLine
        = TextDecorationLine
        | None
-}
type alias TextDecorationLine compatible =
    { compatible
        | value : String
        , textDecorationLine : Compatible
    }


{-| -}
type alias TextDecorationStyle compatible =
    { compatible
        | value : String
        , textDecorationStyle : Compatible
    }


{-| -}
type alias TextOverflow compatible =
    { compatible
        | value : String
        , textOverflow : Compatible
    }


{-|
    type TextTransform
        = TextTransform
        | None
-}
type alias TextTransform compatible =
    { compatible
        | value : String
        , textTransform : Compatible
    }


{-|
    type VerticalAlign
        = VerticalAlign
        | Length
        | Percentage
        | Baseline
        | Top_
        | Bottom_
-}
type alias VerticalAlign compatible =
    { compatible
        | value : String
        , verticalAlign : Compatible
    }


{-|
    type OverflowWrap
        = OverflowWrap
        | Normal
-}
type alias OverflowWrap compatible =
    { compatible
        | value : String
        , overflowWrap : Compatible
    }


{-|
    type WhiteSpace
        = WhiteSpace
        | Normal
        | Nowrap
-}
type alias WhiteSpace compatible =
    { compatible
        | value : String
        , whiteSpace : Compatible
    }


{-|
    type WordBreak
        = WordBreak
        | Normal
-}
type alias WordBreak compatible =
    { compatible
        | value : String
        , wordBreak : Compatible
    }



-- Transform Properties


{-|
    type BackfaceVisibility
        = Visible
        | Hidden
-}
type alias BackfaceVisibility compatible =
    { compatible
        | value : String
        , backfaceVisibility : Compatible
    }


{-| -}
type alias TransformStyle compatible =
    { compatible
        | value : String
        , transformStyle : Compatible
    }



-- Transition Properties


{-|
    type TransitionProperty
        = Str
        | All_
        | None
-}
type alias TransitionProperty compatible =
    { compatible
        | value : String
        , transitionProperty : Compatible
    }



-- Visual Formatting Properties


{-|
    type Display
        = Display
        | None
-}
type alias Display compatible =
    { compatible
        | value : String
        , display : Compatible
    }


{-|
    type Position_
        = Position_
        | Fixed
-}
type alias Position_ compatible =
    { compatible
        | value : String
        , position_ : Compatible
    }


{-|
    type Float_
        = Left_
        | Right_
        | None
-}
type alias Float_ compatible =
    { compatible
        | value : String
        , float_ : Compatible
    }


{-|
    type Clear
        = Left_
        | Right_
        | None
        | Both
-}
type alias Clear compatible =
    { compatible
        | value : String
        , clear : Compatible
    }


{-|
    type Overflow
        = Overflow
        | Visible
        | Hidden
        | Scroll
        | Auto
-}
type alias Overflow compatible =
    { compatible
        | value : String
        , overflow : Compatible
    }


{-|
    type Resize
        = Resize
        | Both
        | None
-}
type alias Resize compatible =
    { compatible
        | value : String
        , resize : Compatible
    }


{-|
    type Visibility
        = Visibile
        | Hidden
        | Collapse
-}
type alias Visibility compatible =
    { compatible
        | value : String
        , visibility : Compatible
    }


{-|
    type Cursor
        = Cursor
        | None
        | Auto
-}
type alias Cursor compatible =
    { compatible
        | value : String
        , cursor : Compatible
    }


{-|
    type BoxSizing
        = BorderBox
        | ContentBox
-}
type alias BoxSizing compatible =
    { compatible
        | value : String
        , boxSizing : Compatible
    }



{-
   Value Types
-}


{-| -}
type alias All_ compatible =
    { compatible
        | value : String
        , all_ : Compatible
        , columnSpan : Compatible
        , transitionProperty : Compatible
    }


{-| -}
type alias Auto compatible =
    { compatible
        | value : String
        , auto : Compatible
        , backgroundSize : Compatible
        , backgroundSizeShorthand : Compatible
        , borderImageWidth : Compatible
        , columnFill : Compatible
        , pageBreak : Compatible
        , pageBreakInside : Compatible
        , tableLayout : Compatible
        , textAlignLast : Compatible
        , overflow : Compatible
        , cursor : Compatible
        , auto_length_percentage : Compatible
    }


{-| -}
type alias Baseline compatible =
    { compatible
        | value : String
        , baseline : Compatible
        , alignItems : Compatible
        , verticalAlign : Compatible
    }


{-| -}
type alias BorderBox compatible =
    { compatible
        | value : String
        , borderBox : Compatible
        , backgroundClip : Compatible
        , backgroundOrigin : Compatible
        , boxSizing : Compatible
    }


{-| -}
type alias Both compatible =
    { compatible
        | value : String
        , both : Compatible
        , animationFillMode : Compatible
        , clear : Compatible
        , resize : Compatible
    }


{-| -}
type alias Bottom_ compatible =
    { compatible
        | value : String
        , bottom_ : Compatible
        , positionShorthand : Compatible
        , captionSide : Compatible
        , verticalAlign : Compatible
    }


{-| -}
type alias Center compatible =
    { compatible
        | value : String
        , center : Compatible
        , positionShorthand : Compatible
        , alignContent : Compatible
        , alignItems : Compatible
        , justifyContent : Compatible
        , textAlign : Compatible
        , textAlignLast : Compatible
    }


{-| -}
type alias Collapse compatible =
    { compatible
        | value : String
        , collapse : Compatible
        , borderCollapse : Compatible
        , visibility : Compatible
    }


{-| -}
type alias ColorStop compatible =
    { compatible
        | value : String
        , colorStop : Compatible
    }


{-| -}
type alias ContentBox compatible =
    { compatible
        | value : String
        , contentBox : Compatible
        , backgroundClip : Compatible
        , backgroundOrigin : Compatible
        , boxSizing : Compatible
    }


{-| -}
type alias Dashed compatible =
    { compatible
        | value : String
        , dashed : Compatible
        , borderStyle : Compatible
        , textDecorationStyle : Compatible
    }


{-| -}
type alias Dotted compatible =
    { compatible
        | value : String
        , dotted : Compatible
        , borderStyle : Compatible
        , textDecorationStyle : Compatible
    }


{-| -}
type alias Double compatible =
    { compatible
        | value : String
        , double : Compatible
        , borderStyle : Compatible
        , textDecorationStyle : Compatible
    }


{-| -}
type alias End compatible =
    { compatible
        | value : String
        , end : Compatible
        , stepsDirection : Compatible
        , textAlignLast : Compatible
    }


{-| -}
type alias Fixed compatible =
    { compatible
        | value : String
        , fixed : Compatible
        , backgroundAttachment : Compatible
        , tableLayout : Compatible
        , position_ : Compatible
    }


{-| -}
type alias FlexEnd compatible =
    { compatible
        | value : String
        , flexEnd : Compatible
        , alignContent : Compatible
        , alignItems : Compatible
        , justifyContent : Compatible
    }


{-| -}
type alias FlexStart compatible =
    { compatible
        | value : String
        , flexStart : Compatible
        , alignContent : Compatible
        , alignItems : Compatible
        , justifyContent : Compatible
    }


{-| -}
type alias Hidden compatible =
    { compatible
        | value : String
        , hidden : Compatible
        , borderStyle : Compatible
        , backfaceVisibility : Compatible
        , overflow : Compatible
        , visibility : Compatible
    }


{-| -}
type alias Justify compatible =
    { compatible
        | value : String
        , justify : Compatible
        , textAlign : Compatible
        , textAlignLast : Compatible
    }


{-| -}
type alias Left_ compatible =
    { compatible
        | value : String
        , left_ : Compatible
        , positionShorthand : Compatible
        , pageBreak : Compatible
        , textAlign : Compatible
        , textAlignLast : Compatible
        , float_ : Compatible
        , clear : Compatible
    }


{-| -}
type alias None compatible =
    { compatible
        | value : String
        , none : Compatible
        , animationFillMode : Compatible
        , borderStyle : Compatible
        , fontVariantLigatures : Compatible
        , listStyleType : Compatible
        , columnSpan : Compatible
        , textDecorationLine : Compatible
        , textTransform : Compatible
        , transformFunction : Compatible
        , transitionProperty : Compatible
        , display : Compatible
        , float_ : Compatible
        , clear : Compatible
        , resize : Compatible
        , cursor : Compatible
    }


{-| -}
type alias Normal compatible =
    { compatible
        | value : String
        , normal : Compatible
        , animationDirection : Compatible
        , fontVariantAlternates : Compatible
        , fontVariantCaps : Compatible
        , fontVariantEastAsian : Compatible
        , fontVariantLigatures : Compatible
        , fontVariantNumeric : Compatible
        , overflowWrap : Compatible
        , whiteSpace : Compatible
        , wordBreak : Compatible
    }


{-| -}
type alias Nowrap compatible =
    { compatible
        | value : String
        , nowrap : Compatible
        , flexWrap : Compatible
        , whiteSpace : Compatible
    }


{-| -}
type alias PaddingBox compatible =
    { compatible
        | value : String
        , paddingBox : Compatible
        , backgroundClip : Compatible
        , backgroundOrigin : Compatible
    }


{-| -}
type alias Repeat compatible =
    { compatible
        | value : String
        , repeat : Compatible
        , backgroundRepeat : Compatible
        , backgroundRepeatShorthand : Compatible
        , borderImageRepeat : Compatible
    }


{-| -}
type alias Right_ compatible =
    { compatible
        | value : String
        , right_ : Compatible
        , positionShorthand : Compatible
        , pageBreak : Compatible
        , textAlign : Compatible
        , textAlignLast : Compatible
        , float_ : Compatible
        , clear : Compatible
    }


{-| -}
type alias Round compatible =
    { compatible
        | value : String
        , round : Compatible
        , backgroundRepeat : Compatible
        , backgroundRepeatShorthand : Compatible
        , borderImageRepeat : Compatible
    }


{-| -}
type alias Scroll compatible =
    { compatible
        | value : String
        , scroll : Compatible
        , backgroundAttachment : Compatible
        , overflow : Compatible
    }


{-| -}
type alias Shape compatible =
    { compatible
        | value : String
        , shape : Compatible
    }


{-| -}
type alias Solid compatible =
    { compatible
        | value : String
        , solid : Compatible
        , borderStyle : Compatible
        , textDecorationStyle : Compatible
    }


{-| -}
type alias Space compatible =
    { compatible
        | value : String
        , space : Compatible
        , backgroundRepeat : Compatible
        , backgroundRepeatShorthand : Compatible
        , borderImageRepeat : Compatible
    }


{-| -}
type alias SpaceBetween compatible =
    { compatible
        | value : String
        , spaceBetween : Compatible
        , alignContent : Compatible
        , justifyContent : Compatible
    }


{-| -}
type alias SpaceAround compatible =
    { compatible
        | value : String
        , spaceAround : Compatible
        , alignContent : Compatible
        , justifyContent : Compatible
    }


{-| -}
type alias SpaceEvenly compatible =
    { compatible
        | value : String
        , spaceEvenly : Compatible
        , alignContent : Compatible
        , justifyContent : Compatible
    }


{-| -}
type alias Start compatible =
    { compatible
        | value : String
        , start : Compatible
        , stepsDirection : Compatible
        , textAlignLast : Compatible
    }


{-|
    type StepsDirection
        = Start
        | End
-}
type alias StepsDirection compatible =
    { compatible
        | value : String
        , stepsDirection : Compatible
    }


{-| -}
type alias Stretch compatible =
    { compatible
        | value : String
        , stretch : Compatible
        , alignContent : Compatible
        , alignItems : Compatible
        , borderImageRepeat : Compatible
    }


{-| -}
type alias Top_ compatible =
    { compatible
        | value : String
        , top_ : Compatible
        , positionShorthand : Compatible
        , captionSide : Compatible
        , verticalAlign : Compatible
    }


{-| -}
type alias Visible compatible =
    { compatible
        | value : String
        , visible : Compatible
        , backfaceVisibility : Compatible
        , overflow : Compatible
        , visibility : Compatible
    }
