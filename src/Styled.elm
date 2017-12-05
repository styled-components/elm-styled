module Styled
    exposing
        ( declaration
          -- Misc
        , styled
        , media
        , mixin
        , important
          -- Properties
          -- Animation Properties
        , animation
        , animationDelay
        , animationDirection
        , animationDuration
        , animationFillMode
        , animationIterationCount
        , animationName
        , animationPlayState
        , animationTimingFunction
          -- Background Properties
        , background
        , backgroundAttachment
        , backgroundClip
        , backgroundColor
        , backgroundImage
        , backgroundOrigin
        , backgroundPosition
        , backgroundPosition2
        , backgroundRepeat
        , backgroundRepeat2
        , backgroundSize
        , backgroundSize2
          -- Border Properties
        , border
        , borderBottom
        , borderBottomColor
        , borderBottomLeftRadius
        , borderBottomRightRadius
        , borderBottomStyle
        , borderBottomWidth
        , borderColor
        , borderImage
        , borderImageOutset
        , borderImageOutset2
        , borderImageOutset3
        , borderImageOutset4
        , borderImageRepeat
        , borderImageRepeat2
        , borderImageSlice
        , borderImageSlice2
        , borderImageSlice3
        , borderImageSlice4
        , borderImageSource
        , borderImageWidth
        , borderImageWidth2
        , borderImageWidth3
        , borderImageWidth4
        , borderLeft
        , borderLeftColor
        , borderLeftStyle
        , borderLeftWidth
        , borderRadius
        , borderRight
        , borderRightColor
        , borderRightStyle
        , borderRightWidth
        , borderStyle
        , borderTop
        , borderTopColor
        , borderTopLeftRadius
        , borderTopRightRadius
        , borderTopStyle
        , borderTopWidth
        , borderWidth
          -- Color Properties
        , color
        , opacity
          -- Dimension Properties
        , height
        , maxHeight
        , maxWidth
        , minHeight
        , minWidth
        , width
          -- Generated Content Properties
        , content
        , quotes
        , counterReset
        , counterReset2
        , counterIncrement
        , counterIncrement2
          -- Flexible Box Layout
        , alignContent
        , alignItems
        , alignSelf
        , flex
        , flexBasis
        , flexDirection
        , flexFlow
        , flexGrow
        , flexShrink
        , flexWrap
        , justifyContent
        , order
          -- Font Properties
        , fontFamily
        , fontFamilies
        , fontSize
        , fontSizeAdjust
        , fontStretch
        , fontStyle
        , fontVariant
        , fontVariantAlternates
        , fontVariantCaps
        , fontVariantEastAsian
        , fontVariantLigatures
        , fontVariantNumeric
        , fontWeight
          -- List Properties
        , listStyle
        , listStyleImage
        , listStylePosition
        , listStyleType
          -- Margin Properties
        , margin
        , margin2
        , margin3
        , margin4
        , marginBottom
        , marginLeft
        , marginRight
        , marginTop
          -- Multi-column Layout Properties
        , columnCount
        , columnFill
        , columnGap
        , columnRule
        , columnRuleColor
        , columnRuleStyle
        , columnRuleWidth
        , columnSpan
        , columnWidth
        , columns
          -- Outline Properties
        , outline
        , outlineColor
        , outlineOffset
        , outlineStyle
        , outlineWidth
          -- Padding Properties
        , padding
        , padding2
        , padding3
        , padding4
        , paddingBottom
        , paddingLeft
        , paddingRight
        , paddingTop
          -- Print Properties
        , pageBreakAfter
        , pageBreakBefore
        , pageBreakInside
          -- Table Properties
        , borderCollapse
        , borderSpacing
        , borderSpacing2
        , captionSide
        , emptyCells
        , tableLayout
          -- Text Properties
        , direction
        , textAlign
        , textAlignLast
        , textDecoration
        , textDecorationColor
        , textDecorationLine
        , textDecorationLine2
        , textDecorationStyle
        , textIndent
        , textOverflow
        , textShadow
        , textTransform
        , lineHeight
        , verticalAlign
        , letterSpacing
        , overflowWrap
        , wordSpacing
        , whiteSpace
        , wordBreak
          -- Transform Properties
        , backfaceVisibility
        , perspective
        , perspectiveOrigin
        , perspectiveOrigin2
        , transform
        , transforms
        , transformOrigin
        , transformOrigin2
        , transformOrigin3
        , transformStyle
          -- Transition Properties
        , transition
        , transitionDelay
        , transitionDuration
        , transitionProperty
        , transitionTimingFunction
          -- Visual Formatting Properties
        , display
        , position
        , top
        , right
        , bottom
        , left
        , float
        , clear
        , zIndex
        , overflow
        , overflowX
        , overflowY
        , resize
        , visibility
        , cursor
        , boxShadow
        , boxSizing
          -- CSS Data Type Values
          -- Angle
        , deg
        , grad
        , rad
        , turn
          -- Color
        , transparent
        , currentColor
        , hex
        , rgb
        , rgba
        , hsl
        , hsla
          -- Integer
        , int
          -- Length
        , px
        , em
        , rem
        , vh
        , vw
        , vmin
        , vmax
        , zero
          -- Number
        , num
          -- Percentage
        , percent
          -- String
        , str
          -- Time
        , ms
        , s
          -- Url
        , url
          -- Other Values
        , all_
        , auto
        , baseline
        , borderBox
        , both
        , bottom_
        , center
        , collapse
        , contentBox
        , dashed
        , dotted
        , double
        , end
        , fixed
        , flexEnd
        , flexStart
        , hidden
        , justify
        , left_
        , none
        , normal
        , nowrap
        , paddingBox
        , repeat
        , right_
        , round
        , scroll
        , solid
        , space
        , spaceAround
        , spaceBetween
        , spaceEvenly
        , start
        , stretch
        , top_
        , visible
          -- Animation Direction Values
        , reverse
        , alternate
        , alternateReverse
          -- Animation Fill Mode
        , forwards
        , backwards
          -- Animation Iteration Count
        , infinite
          -- Animation Play State
        , paused
        , running
          -- Background Attachment
        , local
          -- Background Repeat
        , noRepeat
        , repeatX
        , repeatY
          -- Background Size
        , contain
        , cover
          -- Border Style
        , groove
        , ridge
        , inset
        , outset
          -- Content
        , attr
        , counter
        , openQuote
        , closeQuote
        , noOpenQuote
        , noCloseQuote
          -- Flex Direction
        , row
        , rowReverse
        , column
        , columnReverse
          -- Flex Wrap
        , wrap
        , wrapReverse
          -- Font Family
        , serif
        , sansSerif
        , monospace
          -- Font Stretch
        , ultraCondensed
        , extraCondensed
        , condensed
        , semiCondensed
        , semiExpanded
        , expanded
        , extraExpanded
        , ultraExpanded
          -- Font Style
        , italic
        , oblique
          -- List Style Position
        , outside
        , inside
          -- Column Fill
        , balance
          -- Page Break
        , avoid
          -- Border Collapse
        , separate
          -- Empty Cells
        , show
        , hide
          -- Direction
        , ltr
        , rtl
          -- Text Align
        , justifyAll
          -- Text Decoration Line
        , underline
        , overline
        , lineThrough
          -- Text Decoration Style
        , wavy
          -- Text Overflow
        , clip
        , ellipsis
          -- Text Transform
        , capitalize
        , uppercase
        , lowercase
          -- Vertical Align
        , sub
        , super
        , textTop
        , textBottom
        , middle
          -- Overflow Wrap
        , breakWord
          -- White Space
        , pre
        , preWrap
        , preLine
          -- Word Break
        , breakAll
        , keepAll
          -- Transform Style
        , preserve3d
        , flat
          -- Display
        , block
        , inline
        , table
        , flex_
        , listItem
        , tableRowGroup
        , tableHeaderGroup
        , tableFooterGroup
        , tableRow
        , tableCell
        , tableColumnGroup
        , tableColumn
        , tableCaption
        , inlineBlock
        , inlineListItem
        , inlineTable
        , inlineFlex
          -- Position
        , static
        , relative
        , absolute
        , sticky
          -- Resize
        , horizontal
        , vertical
        )

{-|

# Misc
@docs styled, media, mixin, important


# Properties

## Animation Properties
@docs animation, animationDelay, animationDirection, animationDuration, animationFillMode, animationIterationCount, animationName, animationPlayState, animationTimingFunction

## Background Properties
@docs background, backgroundAttachment, backgroundClip, backgroundColor, backgroundImage, backgroundOrigin, backgroundPosition, backgroundPosition2, backgroundRepeat, backgroundRepeat2, backgroundSize, backgroundSize2

## Border Properties
@docs border, borderBottom, borderBottomColor, borderBottomLeftRadius, borderBottomRightRadius, borderBottomStyle, borderBottomWidth, borderColor, borderImage, borderImageOutset, borderImageOutset2, borderImageOutset3, borderImageOutset4, borderImageRepeat, borderImageRepeat2, borderImageSlice, borderImageSlice2, borderImageSlice3, borderImageSlice4, borderImageSource, borderImageWidth, borderImageWidth2, borderImageWidth3, borderImageWidth4, borderLeft, borderLeftColor, borderLeftStyle, borderLeftWidth, borderRadius, borderRight, borderRightColor, borderRightStyle, borderRightWidth, borderStyle, borderTop, borderTopColor, borderTopLeftRadius, borderTopRightRadius, borderTopStyle, borderTopWidth, borderWidth

## Color Properties
@docs color, opacity

## Dimension Properties
@docs height, maxHeight, maxWidth, minHeight, minWidth, width

## Generated Content Properties
@docs content, quotes, counterReset, counterReset2, counterIncrement, counterIncrement2

## Flexible Box Layout
@docs alignContent, alignItems, alignSelf, flex, flexBasis, flexDirection, flexFlow, flexGrow, flexShrink, flexWrap, justifyContent, order

## Font Properties
@docs fontFamily, fontFamilies, fontSize, fontSizeAdjust, fontStretch, fontStyle, fontVariant, fontVariantAlternates, fontVariantCaps, fontVariantEastAsian, fontVariantLigatures, fontVariantNumeric, fontWeight

## List Properties
@docs listStyle, listStyleImage, listStylePosition, listStyleType

## Margin Properties
@docs margin, margin2, margin3, margin4, marginBottom, marginLeft, marginRight, marginTop

## Multi-column Layout Properties
@docs columnCount, columnFill, columnGap, columnRule, columnRuleColor, columnRuleStyle, columnRuleWidth, columnSpan, columnWidth, columns

## Outline Properties
@docs outline, outlineColor, outlineOffset, outlineStyle, outlineWidth

## Padding Properties
@docs padding, padding2, padding3, padding4, paddingBottom, paddingLeft, paddingRight, paddingTop

## Print Properties
@docs pageBreakAfter, pageBreakBefore, pageBreakInside

## Table Properties
@docs borderCollapse, borderSpacing, borderSpacing2, captionSide, emptyCells, tableLayout

## Text Properties
@docs direction, textAlign, textAlignLast, textDecoration, textDecorationColor, textDecorationLine, textDecorationLine2, textDecorationStyle, textIndent, textOverflow, textShadow, textTransform, lineHeight, verticalAlign, letterSpacing, wordSpacing, whiteSpace, wordBreak, overflowWrap

## Transform Properties
@docs backfaceVisibility, perspective, perspectiveOrigin, perspectiveOrigin2, transform, transforms, transformOrigin, transformOrigin2, transformOrigin3, transformStyle

## Transitions Properties
@docs transition, transitionDelay, transitionDuration, transitionProperty, transitionTimingFunction

## Visual Formatting Properties
@docs display, position, top, right, bottom, left, float, clear, zIndex, overflow, overflowX, overflowY, resize, visibility, cursor, boxShadow, boxSizing


# CSS Data Type Values

## Angle
@docs deg, grad, rad, turn

## Color
@docs transparent, currentColor, hex, rgb, rgba, hsl, hsla

## Integer
@docs int

## Length
@docs px, em, rem, vh, vw, vmin, vmax, zero

## Number
@docs num

## Percentage
@docs percent

## String
@docs str

## Time
@docs ms, s

## Url
@docs url


# Other Values
@docs all_, auto, baseline, borderBox, both, bottom_, center, collapse, contentBox, dashed, dotted, double, end, fixed, flexEnd, flexStart, hidden, justify, left_, none, normal, nowrap, paddingBox, repeat, right_, round, scroll, solid, space, spaceBetween, spaceAround, spaceEvenly, start, stretch, top_, visible

## Animation Direction
@docs reverse, alternate, alternateReverse

## Animation Fill Mode
@docs forwards, backwards

## Animation Iteration Count
@docs infinite

## Animation Play State
@docs paused, running

## Background Attachment
@docs local

## Background Repeat
@docs space, noRepeat, repeatX, repeatY

## Background Size
@docs contain, cover

## Border Style
@docs none, groove, ridge, inset, outset

## Content
@docs attr, counter, openQuote, closeQuote, noOpenQuote, noCloseQuote

## Align Content
@docs spaceBetween, spaceAround, spaceEvenly

## Flex Direction
@docs row, rowReverse, column, columnReverse

## Flex Wrap
@docs wrap, wrapReverse

## Font Family
@docs serif, sansSerif, monospace

## Font Stretch
@docs ultraCondensed, extraCondensed, condensed, semiCondensed, semiExpanded, expanded, extraExpanded, ultraExpanded

## Font Style
@docs italic, oblique

## List Style Position
@docs outside, inside

## Column Fill
@docs balance

## Page Break
@docs avoid

## Border Collapse
@docs separate

## Empty Cells
@docs show, hide

## Direction
@docs ltr, rtl

## Text Align
@docs justifyAll

## Text Decoration Line
@docs underline, overline, lineThrough

## Text Decoration Style
@docs wavy

## Text Overflow
@docs clip, ellipsis

## Text Transform
@docs capitalize, uppercase, lowercase

## Vertical Align
@docs sub, super, textTop, textBottom, middle

## Overflow Wrap
@docs breakWord

## White Space
@docs pre, preWrap, preLine

## Word Break
@docs breakAll, keepAll

## Transform Style
@docs preserve3d, flat

## Display
@docs block, inline, table, flex_, listItem, tableRowGroup, tableHeaderGroup, tableFooterGroup, tableRow, tableCell, tableColumnGroup, tableColumn, tableCaption, inlineBlock, inlineListItem, inlineTable, inlineFlex

## Position
@docs static, relative, absolute, sticky

## Resize
@docs horizontal, vertical

# Helpers
@docs declaration

-}

import Html.Attributes
import Internal
import Native.Css
import Styled.Types exposing (..)
import VirtualDom exposing (Node, Property)


{-
   Misc
-}


{-|
    header =
        styled div
            [ fontSize (rem 2)
            , lineHeight (num 1.5)
            , padding (rem 1)
            , border (px 1) solid black
            ]
-}
styled :
    (List (Property msg) -> List (Node msg) -> Node msg)
    -> List Rule
    -> List (Property msg)
    -> List (Node msg)
    -> Node msg
styled node rules properties children =
    {- We need to use 2 let blocks because the inner styles needs to be created first so the outer styles can override them. -}
    let
        className =
            Internal.createHash "class" rules

        classNameProperty =
            Html.Attributes.class className

        nodeWithClassName =
            node (classNameProperty :: properties) children
    in
        let
            css =
                Internal.createCss ("." ++ className) rules

            insertedCss =
                List.map Native.Css.insert css
        in
            nodeWithClassName


{-| Apply a media query to a set of rules.

    media "(min-height: 10px)"
        [ backgroundColor blue
        , color red
        ]

-}
media : String -> List Rule -> Rule
media =
    Media


{-| A mixin allows you to reuse common styles. The return value of a mixin can be used like any other style.

    paddingAndMargin length =
        mixin
            [ padding length
            , margin length
            ]

    header =
        styled div
            [ paddingAndMargin (rem 10)
            ]

-}
mixin : List Rule -> Rule
mixin =
    Mixin


{-| Append `!important` to a declaration. You should only use important in special cases.

    borderColor black |> important

-}
important : Rule -> Rule
important rule =
    case rule of
        Declaration property values _ ->
            Declaration property values True

        Selector selector rules ->
            Selector selector (List.map important rules)

        Media query rules ->
            Media query (List.map important rules)

        Mixin rules ->
            Mixin (List.map important rules)



{-
   Properties
-}


createValue : String -> Value {}
createValue value =
    { value = value
    }


type alias Value compatible =
    { compatible
        | value : String
    }


{-| Defines a custom declaration. Use this if you need an unsupported feature. Feel free to open a PR / Issue to add some features which are missing. This function shouldn't be needed.

    declaration "-webkit-font-smoothing" ["none"]
    declaration "-moz-user-focus" ["ignore"] |> important

outputs

    -webkit-font-smoothing: none;
    -moz-user-focus: normal !important;

-}
declaration : String -> List String -> Rule
declaration property values =
    Declaration property values False


decl1 :
    String
    -> Value a
    -> Rule
decl1 property a =
    declaration property
        [ a.value
        ]


decl2 :
    String
    -> Value a
    -> Value b
    -> Rule
decl2 property a b =
    declaration property
        [ a.value
        , b.value
        ]


decl3 :
    String
    -> Value a
    -> Value b
    -> Value c
    -> Rule
decl3 property a b c =
    declaration property
        [ a.value
        , b.value
        , c.value
        ]


decl4 :
    String
    -> Value a
    -> Value b
    -> Value c
    -> Value d
    -> Rule
decl4 property a b c d =
    declaration property
        [ a.value
        , b.value
        , c.value
        , d.value
        ]


decl5 :
    String
    -> Value a
    -> Value b
    -> Value c
    -> Value d
    -> Value e
    -> Rule
decl5 property a b c d e =
    declaration property
        [ a.value
        , b.value
        , c.value
        , d.value
        , e.value
        ]


decl6 :
    String
    -> Value a
    -> Value b
    -> Value c
    -> Value d
    -> Value e
    -> Value f
    -> Rule
decl6 property a b c d e f =
    declaration property
        [ a.value
        , b.value
        , c.value
        , d.value
        , e.value
        , f.value
        ]


decl7 :
    String
    -> Value a
    -> Value b
    -> Value c
    -> Value d
    -> Value e
    -> Value f
    -> Value g
    -> Rule
decl7 property a b c d e f g =
    declaration property
        [ a.value
        , b.value
        , c.value
        , d.value
        , e.value
        , f.value
        , g.value
        ]


decl8 :
    String
    -> Value a
    -> Value b
    -> Value c
    -> Value d
    -> Value e
    -> Value f
    -> Value g
    -> Value h
    -> Rule
decl8 property a b c d e f g h =
    declaration property
        [ a.value
        , b.value
        , c.value
        , d.value
        , e.value
        , f.value
        , g.value
        , h.value
        ]



-- Animation Properties


{-| Specifies the keyframe-based animations. [`animation`](https://developer.mozilla.org/en-US/docs/Web/CSS/animation)

    animation <name> <duration> <timing-function> <delay> <iteration-count> <direction> <fill-mode> <play-state>

    animation spin (s 3) linear (s 0) infinite normal none running


-}
animation :
    Keyframes compatibleA
    -> Time compatibleB
    -> TimingFunction compatibleC
    -> Time compatibleD
    -> AnimationIterationCount compatibleE
    -> AnimationDirection compatibleF
    -> AnimationFillMode compatibleG
    -> AnimationPlayState compatibleH
    -> Rule
animation =
    decl8 "animation"


{-| Specifies when the animation will start. [`animation-delay`](https://developer.mozilla.org/en-US/docs/Web/CSS/animation-delay)

    animationDelay (s 15)
    animationDelay (ms 500)

-}
animationDelay : Time compatible -> Rule
animationDelay =
    decl1 "animation-delay"


{-| Specifies whether the animation should play in reverse on alternate cycles or not. [`animation-direction`](https://developer.mozilla.org/en-US/docs/Web/CSS/animation-direction)

    animationDirection normal
    animationDirection reverse
    animationDirection alternate

-}
animationDirection : AnimationDirection compatible -> Rule
animationDirection =
    decl1 "animation-direction"


{-| Specifies the number of seconds or milliseconds an animation should take to complete one cycle. [`animation-duration`](https://developer.mozilla.org/en-US/docs/Web/CSS/animation-duration)

    animationDuration (s 20)
    animationDuration (ms 800)

-}
animationDuration : Time compatible -> Rule
animationDuration =
    decl1 "animation-duration"


{-| Specifies how a CSS animation should apply styles to its target before and after it is executing. [`animation-fill-mode`](https://developer.mozilla.org/en-US/docs/Web/CSS/animation-fill-mode)

    animationFillMode forwards

-}
animationFillMode : AnimationFillMode compatible -> Rule
animationFillMode =
    decl1 "animation-fill-mode"


{-| Specifies the number of times an animation cycle should be played before stopping. [`animation-iteration-count`](https://developer.mozilla.org/en-US/docs/Web/CSS/animation-iteration-count)

    animationIterationCount (int 15)
    animationIterationCount infinite

-}
animationIterationCount : AnimationIterationCount compatible -> Rule
animationIterationCount =
    decl1 "animation-iteration-count"


{-| Specifies the name of @keyframes defined animations that should be applied to the selected element. [`animation-name`](https://developer.mozilla.org/en-US/docs/Web/CSS/animation-name)

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

    animationName = spin

-}
animationName : Keyframes compatible -> Rule
animationName =
    decl1 "animation-name"


{-| Specifies whether the animation is running or paused. [`animation-play-state`](https://developer.mozilla.org/en-US/docs/Web/CSS/animation-play-state)

    animationPlayState running
    animationPlayState paused

-}
animationPlayState : AnimationPlayState compatible -> Rule
animationPlayState =
    decl1 "animation-play-state"


{-| Specifies how a CSS animation should progress over the duration of each cycle. [`animation-timing-function`](https://developer.mozilla.org/en-US/docs/Web/CSS/animation-timing-function)

    animationTimingFunction ease
    animationTimingFunction linear
    animationTimingFunction easeIn

    animationTimingFunction (steps 15 end)
    animationTimingFunction (cubicBezier 0 0 1 1)

-}
animationTimingFunction : TimingFunction compatible -> Rule
animationTimingFunction =
    decl1 "animation-timing-function"



-- Background Properties


{-| Defines a variety of background properties within one declaration. [`background`](https://developer.mozilla.org/en-US/docs/Web/CSS/background)

    background <image> <position> <size> <repeat> <origin> <clip> <attachment> <color>

    background none (percent 0) auto repeat paddingBox borderBox scroll transparent

-}
background :
    Image compatibleA
    -> Position compatibleB
    -> BackgroundSizeShorthand compatibleC
    -> BackgroundRepeatShorthand compatibleD
    -> BackgroundOrigin compatibleE
    -> BackgroundClip compatibleF
    -> BackgroundAttachment compatibleG
    -> Color compatibleH
    -> Rule
background =
    decl8 "background"


{-| Specify whether the background image is fixed in the viewport or scrolls. [`background-attachment`](https://developer.mozilla.org/en-US/docs/Web/CSS/background-attachment)

    backgroundAttachment scroll
    backgroundAttachment local
    backgroundAttachment fixed

-}
backgroundAttachment : BackgroundAttachment compatible -> Rule
backgroundAttachment =
    decl1 "background-attachment"


{-| Specifies the painting area of the background. [`background-clip`](https://developer.mozilla.org/en-US/docs/Web/CSS/background-clip)

    backgroundClip borderBox
    backgroundClip paddingBox
    backgroundClip contentBox

-}
backgroundClip : BackgroundClip compatible -> Rule
backgroundClip =
    decl1 "background-clip"


{-| Defines an element's background color. [`background-color`](https://developer.mozilla.org/en-US/docs/Web/CSS/background-color)

    backgroundColor red
    backgroundColor (hex "639")

-}
backgroundColor : Color compatible -> Rule
backgroundColor =
    decl1 "background-color"


{-| Defines an element's background image. [`background-image`](https://developer.mozilla.org/en-US/docs/Web/CSS/background-image)

    backgroundImage (url "http://example.com/image.jpg")

    backgroundImage (linearGradient (deg 90)
        [ stop green
        , stop blue
        ])

-}
backgroundImage : Image compatible -> Rule
backgroundImage =
    decl1 "background-image"


{-| Specifies the positioning area of the background images. [`background-origin`](https://developer.mozilla.org/en-US/docs/Web/CSS/background-origin)

    backgroundOrigin borderBox
    backgroundOrigin paddingBox
    backgroundOrigin contentBox

-}
backgroundOrigin : BackgroundOrigin compatible -> Rule
backgroundOrigin =
    decl1 "background-origin"


{-| Defines the origin of a background image. [`background-position`](https://developer.mozilla.org/en-US/docs/Web/CSS/background-position)

    backgroundPosition top_
    backgroundPosition center

    backgroundPosition (px 100)
    backgroundPosition (rem 1)
    backgroundPosition (percent 50)

-}
backgroundPosition : PositionShorthand compatible -> Rule
backgroundPosition =
    decl1 "background-position"


{-| Defines the origin of a background image. [`background-position`](https://developer.mozilla.org/en-US/docs/Web/CSS/background-position)

    backgroundPosition2 (px 100) (rem 10)
    backgroundPosition2 (rem 1) zero
    backgroundPosition2 (percent 50) (em 30)

-}
backgroundPosition2 : Position compatibleA -> Position compatibleB -> Rule
backgroundPosition2 =
    decl2 "background-position"


{-| Specify whether/how the background image is tiled. [`background-repeat`](https://developer.mozilla.org/en-US/docs/Web/CSS/background-repeat)

    backgroundRepeat noRepeat
    backgroundRepeat repeatX
    backgroundRepeat repeatY

-}
backgroundRepeat : BackgroundRepeatShorthand compatible -> Rule
backgroundRepeat =
    decl1 "background-repeat"


{-| Specify whether/how the background image is tiled. [`background-repeat`](https://developer.mozilla.org/en-US/docs/Web/CSS/background-repeat)

    backgroundRepeat2 repeat noRepeat
    backgroundRepeat2 space repeat

-}
backgroundRepeat2 :
    BackgroundRepeat compatibleA
    -> BackgroundRepeat compatibleB
    -> Rule
backgroundRepeat2 =
    decl2 "background-repeat"


{-| Specifies the size of the background images. [`background-size`](https://developer.mozilla.org/en-US/docs/Web/CSS/background-size)

    backgroundSize cover
    backgroundSize contain

-}
backgroundSize : BackgroundSizeShorthand compatible -> Rule
backgroundSize =
    decl1 "background-size"


{-| Specifies the size of the background images. [`background-size`](https://developer.mozilla.org/en-US/docs/Web/CSS/background-size)

    backgroundSize2 auto (px 50)
    backgroundSize2 (percent 50) (rem 2)

-}
backgroundSize2 :
    BackgroundSize compatibleA
    -> BackgroundSize compatibleB
    -> Rule
backgroundSize2 =
    decl2 "background-size"



-- Border Properties


{-| Sets the width, style, and color for all four sides of an element's border. [`border`](https://developer.mozilla.org/en-US/docs/Web/CSS/border)

    border <width> <style> <color>

    border (px 1) solid black

-}
border :
    Length compatibleA
    -> BorderStyle compatibleB
    -> Color compatibleC
    -> Rule
border =
    decl3 "border"


{-| Sets the width, style, and color of the bottom border of an element. [`border-bottom`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-bottom)

    borderBottom <width> <style> <color>

    borderBottom (px 1) solid black

-}
borderBottom :
    Length compatibleA
    -> BorderStyle compatibleB
    -> Color compatibleC
    -> Rule
borderBottom =
    decl3 "border-bottom"


{-| Sets the color of the bottom border of an element. [`border-bottom-color`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-bottom-color)

    borderBottomColor red
    borderBottomColor (hex "639")

-}
borderBottomColor : Color compatible -> Rule
borderBottomColor =
    decl1 "border-bottom-color"


{-| Defines the shape of the bottom-left border corner of an element. [`border-bottom-left-radius`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-bottom-left-radius)

    borderBottomLeftRadius (px 5)
    borderBottomLeftRadius (percent 50)

-}
borderBottomLeftRadius : Length_Percentage compatible -> Rule
borderBottomLeftRadius =
    decl1 "border-bottom-left-radius"


{-| Defines the shape of the bottom-right border corner of an element. [`border-bottom-right-radius`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-bottom-right-radius)

    borderBottomRightRadius (px 5)
    borderBottomRightRadius (percent 50)

-}
borderBottomRightRadius : Length_Percentage compatible -> Rule
borderBottomRightRadius =
    decl1 "border-bottom-right-radius"


{-| Sets the style of the bottom border of an element. [`border-bottom-style`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-bottom-style)

    borderBottomStyle solid

-}
borderBottomStyle : BorderStyle compatible -> Rule
borderBottomStyle =
    decl1 "border-bottom-style"


{-| Sets the width of the bottom border of an element. [`border-bottom-width`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-bottom-width)

    borderBottomWidth (px 1)
    borderBottomWidth (rem 3)

-}
borderBottomWidth : Length compatible -> Rule
borderBottomWidth =
    decl1 "border-bottom-width"


{-| Sets the color of the border on all the four sides of an element. [`border-color`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-color)

    borderColor pink
    borderColor (hex "663399")

-}
borderColor : Color compatible -> Rule
borderColor =
    decl1 "border-color"


{-| Specifies how an image is to be used in place of the border styles. [`border-image`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-image)

    borderImage <source> <slice> <width> <outset> <repeat>

    borderImage (url "http://example.com/image.jpg") (int 5) (px 10) (num 1.5) stretch

-}
borderImage :
    Image compatibleA
    -> BorderImageSlice compatibleB
    -> BorderImageWidth compatibleC
    -> Length_Number compatibleD
    -> BorderImageRepeat compatibleE
    -> Rule
borderImage =
    decl5 "border-image"


{-| Specifies the amount by which the border image area extends beyond the border box. [`border-image-outset`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-image-outset)

    borderImageOutset (num 1.4)
    borderImageOutset (int 2)
    borderImageOutset (px 10)
    borderImageOutset (rem 1)

-}
borderImageOutset : Length_Number compatible -> Rule
borderImageOutset =
    decl1 "border-image-outset"


{-| Specifies the amount by which the border image area extends beyond the border box. [`border-image-outset`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-image-outset)

    borderImageOutset2 (int 1) (num 1.5)

-}
borderImageOutset2 :
    Length_Number compatibleA
    -> Length_Number compatibleB
    -> Rule
borderImageOutset2 =
    decl2 "border-image-outset"


{-| Specifies the amount by which the border image area extends beyond the border box. [`border-image-outset`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-image-outset)

    borderImageOutset3 (int 1) (num 1.5) (rem 2)

-}
borderImageOutset3 :
    Length_Number compatibleA
    -> Length_Number compatibleB
    -> Length_Number compatibleC
    -> Rule
borderImageOutset3 =
    decl3 "border-image-outset"


{-| Specifies the amount by which the border image area extends beyond the border box. [`border-image-outset`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-image-outset)

    borderImageOutset4 (int 1) (num 1.5) (rem 2) (px 2.5)

-}
borderImageOutset4 :
    Length_Number compatibleA
    -> Length_Number compatibleB
    -> Length_Number compatibleC
    -> Length_Number compatibleD
    -> Rule
borderImageOutset4 =
    decl4 "border-image-outset"


{-| Specifies whether the image-border should be repeated, rounded or stretched. [`border-image-repeat`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-image-repeat)

    borderImageRepeat stretch
    borderImageRepeat repeat
    borderImageRepeat round
    borderImageRepeat space

-}
borderImageRepeat : BorderImageRepeat compatible -> Rule
borderImageRepeat =
    decl1 "border-image-repeat"


{-| Specifies whether the image-border should be repeated, rounded or stretched. [`border-image-repeat`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-image-repeat)

    borderImageRepeat2 <vertical> <horizontal>

    borderImageRepeat2 space stretch
    borderImageRepeat2 repeat round

-}
borderImageRepeat2 :
    BorderImageRepeat compatibleA
    -> BorderImageRepeat compatibleB
    -> Rule
borderImageRepeat2 =
    decl2 "border-image-repeat"


{-| Specifies the inward offsets of the image-border. [`border-image-slice`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-image-slice)

    borderImageSlice (int 3)
    borderImageSlice (percent 50)

-}
borderImageSlice : BorderImageSlice compatible -> Rule
borderImageSlice =
    decl1 "border-image-slice"


{-| Specifies the inward offsets of the image-border. [`border-image-slice`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-image-slice)

    borderImageSlice2 (int 3) (percent 40)

-}
borderImageSlice2 :
    BorderImageSlice compatibleA
    -> BorderImageSlice compatibleB
    -> Rule
borderImageSlice2 =
    decl2 "border-image-slice"


{-| Specifies the inward offsets of the image-border. [`border-image-slice`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-image-slice)

    borderImageSlice3 (int 3) (percent 40) (int 5)

-}
borderImageSlice3 :
    BorderImageSlice compatibleA
    -> BorderImageSlice compatibleB
    -> BorderImageSlice compatibleC
    -> Rule
borderImageSlice3 =
    decl3 "border-image-slice"


{-| Specifies the inward offsets of the image-border. [`border-image-slice`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-image-slice)

    borderImageSlice4 (int 3) (percent 40) (int 5) (int 6)

-}
borderImageSlice4 :
    BorderImageSlice compatibleA
    -> BorderImageSlice compatibleB
    -> BorderImageSlice compatibleC
    -> BorderImageSlice compatibleD
    -> Rule
borderImageSlice4 =
    decl4 "border-image-slice"


{-| Specifies the location of the image to be used as a border. [`border-image-source`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-image-source)

    borderImageSource (url "http://example.com/image.jpg")

-}
borderImageSource : Image compatible -> Rule
borderImageSource =
    decl1 "border-image-source"


{-| Specifies the width of the image-border. [`border-image-width`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-image-width)

    borderImageWidth (rem 5)
    borderImageWidth (percent 5)

-}
borderImageWidth : BorderImageWidth compatible -> Rule
borderImageWidth =
    decl1 "border-image-width"


{-| Specifies the width of the image-border. [`border-image-width`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-image-width)

    borderImageWidth2 (rem 5) (rem 10)
    borderImageWidth2 (percent 5) (percent 10)

-}
borderImageWidth2 :
    BorderImageWidth compatibleA
    -> BorderImageWidth compatibleB
    -> Rule
borderImageWidth2 =
    decl2 "border-image-width"


{-| Specifies the width of the image-border. [`border-image-width`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-image-width)

    borderImageWidth3 (rem 5) (rem 10) (rem 15)
    borderImageWidth3 (percent 5) (percent 10) (percent 15)

-}
borderImageWidth3 :
    BorderImageWidth compatibleA
    -> BorderImageWidth compatibleB
    -> BorderImageWidth compatibleC
    -> Rule
borderImageWidth3 =
    decl3 "border-image-width"


{-| Specifies the width of the image-border. [`border-image-width`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-image-width)

    borderImageWidth4 (rem 5) (rem 10) (rem 15) (rem 20)
    borderImageWidth4 (percent 5) (percent 10) (percent 15) (percent 20)

-}
borderImageWidth4 :
    BorderImageWidth compatibleA
    -> BorderImageWidth compatibleB
    -> BorderImageWidth compatibleC
    -> BorderImageWidth compatibleD
    -> Rule
borderImageWidth4 =
    decl4 "border-image-width"


{-| Sets the width, style, and color of the left border of an element. [`border-left`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-left)

    borderLeft <width> <style> <color>

    borderLeft (px 1) solid black

-}
borderLeft :
    Length compatibleA
    -> BorderStyle compatibleB
    -> Color compatibleC
    -> Rule
borderLeft =
    decl3 "border-left"


{-| Sets the color of the left border of an element. [`border-left-color`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-left-color)

    borderLeftColor green
    borderLeftColor (hex "639")

-}
borderLeftColor : Color compatible -> Rule
borderLeftColor =
    decl1 "border-left-color"


{-| Sets the style of the left border of an element. [`border-left-style`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-left-style)

    borderLeftStyle dashed

-}
borderLeftStyle : BorderStyle compatible -> Rule
borderLeftStyle =
    decl1 "border-left-style"


{-| Sets the width of the left border of an element. [`border-left-width`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-left-width)

    borderLeftWidth (px 1)

-}
borderLeftWidth : Length compatible -> Rule
borderLeftWidth =
    decl1 "border-left-width"


{-| Defines the shape of the border corners of an element. [`border-radius`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-radius)

    borderRadius (px 5)
    borderRadius (percent 50)

-}
borderRadius : Length_Percentage compatible -> Rule
borderRadius =
    decl1 "border-radius"


{-| Sets the width, style, and color of the right border of an element. [`border-right`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-right)

    borderRight <width> <style> <color>

    borderRight (px 1) solid black

-}
borderRight :
    Length compatibleA
    -> BorderStyle compatibleB
    -> Color compatibleC
    -> Rule
borderRight =
    decl3 "border-right"


{-| Sets the color of the right border of an element. [`border-right-color`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-right-color)

    borderRightColor grape
    borderRightColor (hex "333")

-}
borderRightColor : Color compatible -> Rule
borderRightColor =
    decl1 "border-right-color"


{-| Sets the style of the right border of an element. [`border-right-style`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-right-style)

    borderRightStyle dotted

-}
borderRightStyle : BorderStyle compatible -> Rule
borderRightStyle =
    decl1 "border-right-style"


{-| Sets the width of the right border of an element. [`border-right-width`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-right-width)

    borderRightWidth (px 1)

-}
borderRightWidth : Length compatible -> Rule
borderRightWidth =
    decl1 "border-right-width"


{-| Sets the style of the border on all the four sides of an element. [`border-style`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-style)

    borderStyle double

-}
borderStyle : BorderStyle compatible -> Rule
borderStyle =
    decl1 "border-style"


{-| Sets the width, style, and color of the top border of an element. [`border-top`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-top)

    borderTop <width> <style> <color>

    borderTop (px 1) solid black

-}
borderTop :
    Length compatibleA
    -> BorderStyle compatibleB
    -> Color compatibleC
    -> Rule
borderTop =
    decl3 "border-top"


{-| Sets the color of the top border of an element. [`border-top-color`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-top-color)

    borderTopColor black
    borderTopColor (hex "013370")

-}
borderTopColor : Color compatible -> Rule
borderTopColor =
    decl1 "border-top-color"


{-| Defines the shape of the top-left border corner of an element. [`border-top-left-radius`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-top-left-radius)

    borderTopLeftRadius (px 5)
    borderTopLeftRadius (percent 50)

-}
borderTopLeftRadius : Length_Percentage compatible -> Rule
borderTopLeftRadius =
    decl1 "border-top-left-radius"


{-| Defines the shape of the top-right border corner of an element. [`border-top-right-radius`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-top-right-radius)

    borderTopRightRadius (px 5)
    borderTopRightRadius (percent 50)

-}
borderTopRightRadius : Length_Percentage compatible -> Rule
borderTopRightRadius =
    decl1 "border-top-right-radius"


{-| Sets the style of the top border of an element. [`border-top-style`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-top-style)

    borderTopStyle ridge

-}
borderTopStyle : BorderStyle compatible -> Rule
borderTopStyle =
    decl1 "border-top-style"


{-| Sets the width of the top border of an element. [`border-top-width`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-top-width)

    borderTopWidth (px 1)

-}
borderTopWidth : Length compatible -> Rule
borderTopWidth =
    decl1 "border-top-width"


{-| Sets the width of the border on all the four sides of an element. [`border-width`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-width)

    borderWidth (px 1)

-}
borderWidth : Length compatible -> Rule
borderWidth =
    decl1 "border-width"



-- Color Properties


{-| Specify the color of the text of an element. [`color`](https://developer.mozilla.org/en-US/docs/Web/CSS/color)

    color red
    color black
    color blue

    color (hex "639")

-}
color : Color compatible -> Rule
color =
    decl1 "color"


{-| Specifies the transparency of an element. [`opacity`](https://developer.mozilla.org/en-US/docs/Web/CSS/opacity)

    opacity (int 0)
    opacity (num 0.4)
    opacity (num 0.6)
    opacity (int 1)

-}
opacity : Number compatible -> Rule
opacity =
    decl1 "opacity"



-- Dimension Properties


{-| Specify the height of an element. [`height`](https://developer.mozilla.org/en-US/docs/Web/CSS/height)

    height (px 10)
    height (rem 10)
    height (percent 100)
    height auto

-}
height : Auto_Length_Percentage compatible -> Rule
height =
    decl1 "height"


{-| Specify the maximum height of an element. [`max-height`](https://developer.mozilla.org/en-US/docs/Web/CSS/max-height)

    maxHeight (px 10)
    maxHeight (rem 10)
    maxHeight (percent 100)
    maxHeight auto

-}
maxHeight : Auto_Length_Percentage compatible -> Rule
maxHeight =
    decl1 "max-height"


{-| Specify the maximum width of an element. [`max-width`](https://developer.mozilla.org/en-US/docs/Web/CSS/max-width)

    maxWidth (px 10)
    maxWidth (rem 10)
    maxWidth (percent 100)
    maxWidth auto

-}
maxWidth : Auto_Length_Percentage compatible -> Rule
maxWidth =
    decl1 "max-width"


{-| Specify the minimum height of an element. [`min-height`](https://developer.mozilla.org/en-US/docs/Web/CSS/min-height)

    minHeight (px 10)
    minHeight (rem 10)
    minHeight (percent 100)
    minHeight auto

-}
minHeight : Auto_Length_Percentage compatible -> Rule
minHeight =
    decl1 "min-height"


{-| Specify the minimum width of an element. [`min-width`](https://developer.mozilla.org/en-US/docs/Web/CSS/min-width)

    minWidth (px 10)
    minWidth (rem 10)
    minWidth (percent 100)
    minWidth auto

-}
minWidth : Auto_Length_Percentage compatible -> Rule
minWidth =
    decl1 "min-width"


{-| Specify the width of an element. [`width`](https://developer.mozilla.org/en-US/docs/Web/CSS/width)

    width (px 10)
    width (rem 10)
    width (percent 100)
    width auto

-}
width : Auto_Length_Percentage compatible -> Rule
width =
    decl1 "width"



-- Generated Content Properties


{-| Inserts generated content. [`content`](https://developer.mozilla.org/en-US/docs/Web/CSS/content)

    content (attr "data-content")
    content (counter "chapter_counter")
    content (str "Hello World")
    content (url "http://example.com/image.jpg")

    content openQuote
    content closeQuote
    content noOpenQuote
    content noCloseQuote


-}
content : Content compatible -> Rule
content =
    decl1 "content"


{-| Specifies quotation marks for embedded quotations. [`quotes`](https://developer.mozilla.org/en-US/docs/Web/CSS/quotes)

    quotes [("<<", ">>")]
    quotes [("<<", ">>"), ("<", ">")]

-}
quotes : List ( String, String ) -> Rule
quotes =
    List.map (\( open, close ) -> open ++ " " ++ close)
        >> String.join " "
        >> List.singleton
        >> declaration "quotes"


{-| Creates or resets one or more counters. [`counter-reset`](https://developer.mozilla.org/en-US/docs/Web/CSS/counter-reset)

    counterReset (str "section_counter")

-}
counterReset : Str compatible -> Rule
counterReset =
    decl1 "counter-reset"


{-| Creates or resets one or more counters. [`counter-reset`](https://developer.mozilla.org/en-US/docs/Web/CSS/counter-reset)

    counterReset2 (str "section_counter") (int 1337)

-}
counterReset2 : Str compatibleA -> Integer compatibleB -> Rule
counterReset2 =
    decl2 "counter-reset"


{-| Increments one or more counter values. [`counter-increment`](https://developer.mozilla.org/en-US/docs/Web/CSS/counter-increment)

    counterIncrement (str "section_counter")

-}
counterIncrement : Str compatible -> Rule
counterIncrement =
    decl1 "counter-increment"


{-| Increments one or more counter values. [`counter-increment`](https://developer.mozilla.org/en-US/docs/Web/CSS/counter-increment)

    counterIncrement2 (str "section_counter") (int 2)

-}
counterIncrement2 : Str compatibleA -> Integer compatibleB -> Rule
counterIncrement2 =
    decl2 "counter-increment"



-- Flexible Box Layout


{-| Specifies the alignment of flexible container's items within the flex container. [`align-content`](https://developer.mozilla.org/en-US/docs/Web/CSS/align-content)

    alignContent flexStart
    alignContent center
    alignContent spaceAround

-}
alignContent : AlignContent compatible -> Rule
alignContent =
    decl1 "align-content"


{-| Specifies the default alignment for items within the flex container. [`align-items`](https://developer.mozilla.org/en-US/docs/Web/CSS/align-items)

    alignItems baseline
    alignItems flexStart
    alignItems stretch

-}
alignItems : AlignItems compatible -> Rule
alignItems =
    decl1 "align-items"


{-| Specifies the alignment for selected items within the flex container. [`align-self`](https://developer.mozilla.org/en-US/docs/Web/CSS/align-self)

    alignSelf baseline
    alignSelf flexStart
    alignSelf stretch

-}
alignSelf : AlignItems compatible -> Rule
alignSelf =
    decl1 "align-self"


{-| Specifies the components of a flexible length. [`flex`](https://developer.mozilla.org/en-US/docs/Web/CSS/flex)

    flex <grow> <shrink> <basis>

    flex (int 2) (int 2) (percent 50)

-}
flex :
    Number compatibleA
    -> Number compatibleB
    -> Auto_Length_Percentage compatibleC
    -> Rule
flex =
    decl3 "flex"


{-| Specifies the initial main size of the flex item. [`flex-basis`](https://developer.mozilla.org/en-US/docs/Web/CSS/flex-basis)

    flexBasis auto
    flexBasis (px 14)
    flexBasis (rem 40)
    flexBasis (percent 50)

-}
flexBasis : Auto_Length_Percentage compatible -> Rule
flexBasis =
    decl1 "flex-basis"


{-| Specifies the direction of the flexible items. [`flex-direction`](https://developer.mozilla.org/en-US/docs/Web/CSS/flex-direction)

    flexDirection row
    flexDirection rowReverse
    flexDirection column
    flexDirection columnReverse

-}
flexDirection : FlexDirection compatible -> Rule
flexDirection =
    decl1 "flex-direction"


{-| A shorthand property for the flex-direction and the flex-wrap properties. [`flex-flow`](https://developer.mozilla.org/en-US/docs/Web/CSS/flex-flow)

    flexFlow row wrap

-}
flexFlow :
    FlexDirection compatibleA
    -> FlexWrap compatibleB
    -> Rule
flexFlow =
    decl2 "flex-flow"


{-| Specifies how the flex item will grow relative to the other items inside the flex container. [`flex-grow`](https://developer.mozilla.org/en-US/docs/Web/CSS/flex-grow)

    flexGrow (int 2)
    flexGrow (num 1.5)

-}
flexGrow : Number compatible -> Rule
flexGrow =
    decl1 "flex-grow"


{-| Specifies how the flex item will shrink relative to the other items inside the flex container. [`flex-shrink`](https://developer.mozilla.org/en-US/docs/Web/CSS/flex-shrink)

    flexShrink (int 2)
    flexShrink (num 1.5)

-}
flexShrink : Number compatible -> Rule
flexShrink =
    decl1 "flex-shrink"


{-| Specifies whether the flexible items should wrap or not. [`flex-wrap`](https://developer.mozilla.org/en-US/docs/Web/CSS/flex-wrap)

    flexWrap nowrap
    flexWrap wrap
    flexWrap wrapReverse

-}
flexWrap : FlexWrap compatible -> Rule
flexWrap =
    decl1 "flex-wrap"


{-| Specifies how flex items are aligned along the main axis of the flex container after any flexible lengths and auto margins have been resolved. [`justify-content`](https://developer.mozilla.org/en-US/docs/Web/CSS/justify-content)

    justifyContent flexStart
    justifyContent flexEnd
    justifyContent center
    justifyContent spaceEvenly

-}
justifyContent : JustifyContent compatible -> Rule
justifyContent =
    decl1 "justify-content"


{-| Specifies the order in which a flex items are displayed and laid out within a flex container. [`order`](https://developer.mozilla.org/en-US/docs/Web/CSS/order)

    order (int 5)
    order (int -5)

-}
order : Integer compatible -> Rule
order =
    decl1 "order"



-- Font Properties


{-| Defines a list of fonts for element. [`font-family`](https://developer.mozilla.org/en-US/docs/Web/CSS/font-family)

    fontFamily serif
    fontFamily sansSerif
    fontFamily monospace

-}
fontFamily : FontFamily compatible -> Rule
fontFamily =
    decl1 "font-family"


{-| Defines a list of fonts for element. [`font-family`](https://developer.mozilla.org/en-US/docs/Web/CSS/font-family)

    fontFamiles [<fonts>] <fallback>

    fontFamilies ["Open Sans", "Helvetica"] cursive

-}
fontFamilies : List String -> FontFamily compatible -> Rule
fontFamilies families fallback =
    let
        familiesWithParens =
            List.map (\font -> "\"" ++ font ++ "\"") families
    in
        (familiesWithParens ++ [ fallback.value ])
            |> String.join ", "
            |> List.singleton
            |> declaration "font-family"


{-| Defines the font size for the text. [`font-size`](https://developer.mozilla.org/en-US/docs/Web/CSS/font-size)

    fontSize (rem 2)
    fontSize (percent 200)

-}
fontSize : Length_Percentage compatible -> Rule
fontSize =
    decl1 "font-size"


{-| Preserves the readability of text when font fallback occurs. [`font-size-adjust`](https://developer.mozilla.org/en-US/docs/Web/CSS/font-size-adjust)

    fontSizeAdjust (num 0.5)
    fontSizeAdjust (in 2)

-}
fontSizeAdjust : Number compatible -> Rule
fontSizeAdjust =
    decl1 "font-size-adjust"


{-| Selects a normal, condensed, or expanded face from a font. [`font-stretch`](https://developer.mozilla.org/en-US/docs/Web/CSS/font-stretch)

    fontStretch condensed
    fontStretch semiExpanded

-}
fontStretch : FontStretch compatible -> Rule
fontStretch =
    decl1 "font-stretch"


{-| Defines the font style for the text. [`font-style`](https://developer.mozilla.org/en-US/docs/Web/CSS/font-style)

    fontStyle italic
    fontStyle oblique

-}
fontStyle : FontStyle compatible -> Rule
fontStyle =
    decl1 "font-style"


{-| Specify the font variant. [`font-variant`](https://developer.mozilla.org/en-US/docs/Web/CSS/font-variant)

    fontVariant <alternates> <caps> <eastasian> <ligatures> <numeric>

-}
fontVariant :
    FontVariantAlternates compatibleA
    -> FontVariantCaps compatibleB
    -> FontVariantEastAsian compatibleC
    -> FontVariantLigatures compatibleD
    -> FontVariantNumeric compatibleE
    -> Rule
fontVariant =
    decl5 "font-variant"


{-| Specify the font variant. [`font-variant-alternates`](https://developer.mozilla.org/en-US/docs/Web/CSS/font-variant-alternates)

    fontVariantAlternates normal
    fontVariantAlternates historicalForm

-}
fontVariantAlternates : FontVariantAlternates compatible -> Rule
fontVariantAlternates =
    decl1 "font-variant-alternates"


{-| Specify the font variant. [`font-variant-caps`](https://developer.mozilla.org/en-US/docs/Web/CSS/font-variant-caps)

    fontVariantCaps normal
    fontVariantCaps smallCaps
    fontVariantCaps allSmallCaps
    fontVariantCaps petiteCaps
    fontVariantCaps allPetiteCaps
    fontVariantCaps unicase
    fontVariantCaps titlingCaps

-}
fontVariantCaps : FontVariantCaps compatible -> Rule
fontVariantCaps =
    decl1 "font-variant-caps"


{-| Specify the font variant. [`font-variant-east-asian`](https://developer.mozilla.org/en-US/docs/Web/CSS/font-variant-east-asian)

    fontVariantEastAsian ruby
    fontVariantEastAsian jis78
    fontVariantEastAsian jis83
    fontVariantEastAsian jis90
    fontVariantEastAsian jis04
    fontVariantEastAsian simplified
    fontVariantEastAsian traditional
    fontVariantEastAsian proportionalWidth
    fontVariantEastAsian fullWidth

-}
fontVariantEastAsian : FontVariantEastAsian compatible -> Rule
fontVariantEastAsian =
    decl1 "font-variant-east-asian"


{-| Specify the font variant. [`font-variant-ligatures`](https://developer.mozilla.org/en-US/docs/Web/CSS/font-variant-ligatures)

    fontVariantLigatures normal
    fontVariantLigatures none
    fontVariantLigatures commonLigatures
    fontVariantLigatures noCommonLigatures
    fontVariantLigatures discretionaryLigatures
    fontVariantLigatures noDiscretionaryLigatures
    fontVariantLigatures historicalLigatures
    fontVariantLigatures noHistoricalLigatures
    fontVariantLigatures contextual
    fontVariantLigatures noContextual
    fontVariantLigatures contextual

-}
fontVariantLigatures : FontVariantLigatures compatible -> Rule
fontVariantLigatures =
    decl1 "font-variant-ligatures"


{-| Specify the font variant. [`font-variant-numeric`](https://developer.mozilla.org/en-US/docs/Web/CSS/font-variant-numeric)

    fontVariantNumeric normal
    fontVariantNumeric ordinal
    fontVariantNumeric slashedZero
    fontVariantNumeric liningNums
    fontVariantNumeric oldstyleNums
    fontVariantNumeric proportionalNums
    fontVariantNumeric tabularNums
    fontVariantNumeric diagonalFractions
    fontVariantNumeric stackedFractions
    fontVariantNumeric oldstyleNums

-}
fontVariantNumeric : FontVariantNumeric compatible -> Rule
fontVariantNumeric =
    decl1 "font-variant-numeric"


{-| Specify the font weight of the text. [`font-weight`](https://developer.mozilla.org/en-US/docs/Web/CSS/font-weight)

    fontWeight (int 100)
    fontWeight (int 200)
    fontWeight (int 300)
    fontWeight (int 400)
    fontWeight (int 500)
    fontWeight (int 600)
    fontWeight (int 700)
    fontWeight (int 800)

-}
fontWeight : Integer compatible -> Rule
fontWeight =
    decl1 "font-weight"



-- List Properties


{-| Defines the display style for a list and list elements. [`list-style`](https://developer.mozilla.org/en-US/docs/Web/CSS/list-style)

    listStyle <type> <position> <image>


    listStyle dics outside (url "http://example.com/image.jpg")

-}
listStyle :
    ListStyleType compatibleA
    -> ListStylePosition compatibleB
    -> Image compatibleC
    -> Rule
listStyle =
    decl3 "list-style"


{-| Specifies the image to be used as a list-item marker. [`list-style-image`](https://developer.mozilla.org/en-US/docs/Web/CSS/list-style-image)

    listStyleImage (url "http://example.com/image.jpg")

-}
listStyleImage : Image compatible -> Rule
listStyleImage =
    decl1 "list-style-image"


{-| Specifies the position of the list-item marker. [`list-style-position`](https://developer.mozilla.org/en-US/docs/Web/CSS/list-style-position)

    listStylePosition outside
    listStylePosition inside

-}
listStylePosition : ListStylePosition compatible -> Rule
listStylePosition =
    decl1 "list-style-position"


{-| Specifies the marker style for a list-item. [`list-style-type`](https://developer.mozilla.org/en-US/docs/Web/CSS/list-style-type)

    listStyleType none
    listStyleType disc
    listStyleType circle
    listStyleType decimal
    listStyleType georgian
    listStyleType hebrew
    listStyleType katakana
    listStyleType lowerRoman
    listStyleType square
    listStyleType upperAlpha

-}
listStyleType : ListStyleType compatible -> Rule
listStyleType =
    decl1 "list-style-type"



-- Margin Properties


{-| Sets the margin on all four sides of the element. [`margin`](https://developer.mozilla.org/en-US/docs/Web/CSS/margin)

    margin (px 10)

-}
margin : Auto_Length_Percentage compatible -> Rule
margin =
    decl1 "margin"


{-| Sets the margin on all four sides of the element. [`margin`](https://developer.mozilla.org/en-US/docs/Web/CSS/margin)

    margin2 (px 10) (px 20)

-}
margin2 :
    Auto_Length_Percentage compatibleA
    -> Auto_Length_Percentage compatibleB
    -> Rule
margin2 =
    decl2 "margin"


{-| Sets the margin on all four sides of the element. [`margin`](https://developer.mozilla.org/en-US/docs/Web/CSS/margin)

    margin3 (px 10) (px 20) (px 30)

-}
margin3 :
    Auto_Length_Percentage compatibleA
    -> Auto_Length_Percentage compatibleB
    -> Auto_Length_Percentage compatibleC
    -> Rule
margin3 =
    decl3 "margin"


{-| Sets the margin on all four sides of the element. [`margin`](https://developer.mozilla.org/en-US/docs/Web/CSS/margin)

    margin4 (px 10) (px 20) (px 30) (px 40)

-}
margin4 :
    Auto_Length_Percentage compatibleA
    -> Auto_Length_Percentage compatibleB
    -> Auto_Length_Percentage compatibleC
    -> Auto_Length_Percentage compatibleD
    -> Rule
margin4 =
    decl4 "margin"


{-| Sets the bottom margin of the element. [`margin-bottom`](https://developer.mozilla.org/en-US/docs/Web/CSS/margin-bottom)

    marginBottom (rem 2)

-}
marginBottom : Auto_Length_Percentage compatible -> Rule
marginBottom =
    decl1 "margin-bottom"


{-| Sets the left margin of the element. [`margin-left`](https://developer.mozilla.org/en-US/docs/Web/CSS/margin-left)

    marginLeft (rem 2)

-}
marginLeft : Auto_Length_Percentage compatible -> Rule
marginLeft =
    decl1 "margin-left"


{-| Sets the right margin of the element. [`margin-right`](https://developer.mozilla.org/en-US/docs/Web/CSS/margin-right)

    marginRight (rem 2)

-}
marginRight : Auto_Length_Percentage compatible -> Rule
marginRight =
    decl1 "margin-right"


{-| Sets the top margin of the element. [`margin-top`](https://developer.mozilla.org/en-US/docs/Web/CSS/margin-top)

    marginTop (rem 2)

-}
marginTop : Auto_Length_Percentage compatible -> Rule
marginTop =
    decl1 "margin-top"



-- Multi-column Layout Properties


{-| Specifies the number of columns in a multi-column element. [`column-count`](https://developer.mozilla.org/en-US/docs/Web/CSS/column-count)

    columnCount (int 4)

-}
columnCount : Integer compatible -> Rule
columnCount =
    decl1 "column-count"


{-| Specifies how columns will be filled. [`column-fill`](https://developer.mozilla.org/en-US/docs/Web/CSS/column-fill)

    columnFill auto
    columnFill balance

-}
columnFill : ColumnFill compatible -> Rule
columnFill =
    decl1 "column-fill"


{-| Specifies the gap between the columns in a multi-column element. [`column-gap`](https://developer.mozilla.org/en-US/docs/Web/CSS/column-gap)

    columnGap (px 10)
    columnGap (rem 1)

-}
columnGap : Length compatible -> Rule
columnGap =
    decl1 "column-gap"


{-| Specifies a straight line, or "rule", to be drawn between each column in a multi-column element. [`column-rule`](https://developer.mozilla.org/en-US/docs/Web/CSS/column-rule)

    columnRule (px 1) solid black

-}
columnRule :
    Length compatibleA
    -> BorderStyle compatibleB
    -> Color compatibleC
    -> Rule
columnRule =
    decl3 "column-rule"


{-| Specifies the color of the rules drawn between columns in a multi-column layout. [`column-rule-color`](https://developer.mozilla.org/en-US/docs/Web/CSS/column-rule-color)

    columnRuleColor red
    columnRuleColor blue
    columnRuleColor (hex "639")

-}
columnRuleColor : Color compatible -> Rule
columnRuleColor =
    decl1 "column-rule-color"


{-| Specifies the style of the rule drawn between the columns in a multi-column layout. [`column-rule-style`](https://developer.mozilla.org/en-US/docs/Web/CSS/column-rule-style)

    columnRuleStyle dashed
    columnRuleStyle dotted
    columnRuleStyle solid

-}
columnRuleStyle : BorderStyle compatible -> Rule
columnRuleStyle =
    decl1 "column-rule-style"


{-| Specifies the width of the rule drawn between the columns in a multi-column layout. [`column-rule-width`](https://developer.mozilla.org/en-US/docs/Web/CSS/column-rule-width)

    columnRuleWidth (px 1)

-}
columnRuleWidth : Length compatible -> Rule
columnRuleWidth =
    decl1 "column-rule-width"


{-| Specifies how many columns an element spans across in a multi-column layout. [`column-span`](https://developer.mozilla.org/en-US/docs/Web/CSS/column-span)

    columnSpan none
    columnSpan all

-}
columnSpan : ColumnSpan compatible -> Rule
columnSpan =
    decl1 "column-span"


{-| Specifies the optimal width of the columns in a multi-column element. [`column-width`](https://developer.mozilla.org/en-US/docs/Web/CSS/column-width)

    columnWidth (px 250)
    columnWidth (rem 10)

-}
columnWidth : Length compatible -> Rule
columnWidth =
    decl1 "column-width"


{-| A shorthand property for setting column-width and column-count properties. [`columns`](https://developer.mozilla.org/en-US/docs/Web/CSS/columns)

    columns (rem 10) 4

-}
columns : Length compatibleA -> Integer compatibleB -> Rule
columns =
    decl2 "columns"



-- Outline Properties


{-| Sets the width, style, and color for all four sides of an element's outline. [`outline`](https://developer.mozilla.org/en-US/docs/Web/CSS/outline)

    outline <width> <style> <color>

    outline (px 1) solid black

-}
outline :
    Length compatibleA
    -> BorderStyle compatibleB
    -> Color compatibleC
    -> Rule
outline =
    decl3 "outline"


{-| Sets the color of the outline. [`outline-color`](https://developer.mozilla.org/en-US/docs/Web/CSS/outline-color)

    outlineColor red
    outlineColor black
    outlineColor (hex "639")

-}
outlineColor : Color compatible -> Rule
outlineColor =
    decl1 "outline-color"


{-| Set the space between an outline and the border edge of an element. [`outline-offset`](https://developer.mozilla.org/en-US/docs/Web/CSS/outline-offset)

    outlineOffset (px 10)
    outlineOffset (rem 0.5)

-}
outlineOffset : Length compatible -> Rule
outlineOffset =
    decl1 "outline-offset"


{-| Sets a style for an outline. [`outline-style`](https://developer.mozilla.org/en-US/docs/Web/CSS/outline-style)

    outlineStyle solid
    outlineStyle dashed
    outlineStyle dotted

-}
outlineStyle : BorderStyle compatible -> Rule
outlineStyle =
    decl1 "outline-style"


{-| Sets the width of the outline. [`outline-width`](https://developer.mozilla.org/en-US/docs/Web/CSS/outline-width)

    outlineWidth (px 1)
    outlineWidth (rem 1)

-}
outlineWidth : Length compatible -> Rule
outlineWidth =
    decl1 "outline-width"



-- Padding Properties


{-| Sets the padding on all four sides of the element. [`padding`](https://developer.mozilla.org/en-US/docs/Web/CSS/padding)

    padding (rem 1)

-}
padding : Length_Percentage compatible -> Rule
padding =
    decl1 "padding"


{-| Sets the padding on all four sides of the element. [`padding`](https://developer.mozilla.org/en-US/docs/Web/CSS/padding)

    padding2 (rem 1) (rem 2)

-}
padding2 :
    Length_Percentage compatibleA
    -> Length_Percentage compatibleB
    -> Rule
padding2 =
    decl2 "padding"


{-| Sets the padding on all four sides of the element. [`padding`](https://developer.mozilla.org/en-US/docs/Web/CSS/padding)

    padding3 (rem 1) (rem 2) (rem 3)

-}
padding3 :
    Length_Percentage compatibleA
    -> Length_Percentage compatibleB
    -> Length_Percentage compatibleC
    -> Rule
padding3 =
    decl3 "padding"


{-| Sets the padding on all four sides of the element. [`padding`](https://developer.mozilla.org/en-US/docs/Web/CSS/padding)

    padding4 (rem 1) (rem 2) (rem 3) (rem 4)

-}
padding4 :
    Length_Percentage compatibleA
    -> Length_Percentage compatibleB
    -> Length_Percentage compatibleC
    -> Length_Percentage compatibleD
    -> Rule
padding4 =
    decl4 "padding"


{-| Sets the padding to the bottom side of an element. [`padding-bottom`](https://developer.mozilla.org/en-US/docs/Web/CSS/padding-bottom)

    paddingBottom (rem 1)

-}
paddingBottom : Length_Percentage compatible -> Rule
paddingBottom =
    decl1 "padding-bottom"


{-| Sets the padding to the left side of an element. [`padding-left`](https://developer.mozilla.org/en-US/docs/Web/CSS/padding-left)

    paddingLeft (rem 1)

-}
paddingLeft : Length_Percentage compatible -> Rule
paddingLeft =
    decl1 "padding-left"


{-| Sets the padding to the right side of an element. [`padding-right`](https://developer.mozilla.org/en-US/docs/Web/CSS/padding-right)

    paddingRight (rem 1)

-}
paddingRight : Length_Percentage compatible -> Rule
paddingRight =
    decl1 "padding-right"


{-| Sets the padding to the top side of an element. [`padding-top`](https://developer.mozilla.org/en-US/docs/Web/CSS/padding-top)

    paddingTop (rem 1)

-}
paddingTop : Length_Percentage compatible -> Rule
paddingTop =
    decl1 "padding-top"



-- Print Properties


{-| Insert a page breaks after an element. [`page-break-after`](https://developer.mozilla.org/en-US/docs/Web/CSS/page-break-after)

    pageBreakAfter avoid
    pageBreakAfter left_

-}
pageBreakAfter : PageBreak compatible -> Rule
pageBreakAfter =
    decl1 "page-break-after"


{-| Insert a page breaks before an element. [`page-break-before`](https://developer.mozilla.org/en-US/docs/Web/CSS/page-break-before)

    pageBreakBefore auto
    pageBreakBefore always

-}
pageBreakBefore : PageBreak compatible -> Rule
pageBreakBefore =
    decl1 "page-break-before"


{-| Insert a page breaks inside an element. [`page-break-inside`](https://developer.mozilla.org/en-US/docs/Web/CSS/page-break-inside)

    pageBreakInside auto
    pageBreakInside avoid

-}
pageBreakInside : PageBreakInside compatible -> Rule
pageBreakInside =
    decl1 "page-break-inside"



-- Table Properties


{-| Specifies whether table cell borders are connected or separated. [`border-collapse`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-collapse)

    borderCollapse collapse
    borderCollapse separate

-}
borderCollapse : BorderCollapse compatible -> Rule
borderCollapse =
    decl1 "border-collapse"


{-| Sets the spacing between the borders of adjacent table cells. [`border-spacing`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-spacing)

    borderSpacing (rem 1)

-}
borderSpacing : Length compatible -> Rule
borderSpacing =
    decl1 "border-spacing"


{-| Sets the spacing between the borders of adjacent table cells. [`border-spacing`](https://developer.mozilla.org/en-US/docs/Web/CSS/border-spacing)

    borderSpacing (rem 1) (rem 2)

-}
borderSpacing2 : Length compatibleA -> Length compatibleB -> Rule
borderSpacing2 =
    decl2 "border-spacing"


{-| Specify the position of table's caption. [`caption-side`](https://developer.mozilla.org/en-US/docs/Web/CSS/caption-side)

    captionSide bottom_
    captionSide top_

-}
captionSide : CaptionSide compatible -> Rule
captionSide =
    decl1 "caption-side"


{-| Show or hide borders and backgrounds of empty table cells. [`empty-cells`](https://developer.mozilla.org/en-US/docs/Web/CSS/empty-cells)

    emptyCells show
    emptyCells hide

-}
emptyCells : EmptyCells compatible -> Rule
emptyCells =
    decl1 "empty-cells"


{-| Specifies a table layout algorithm. [`table-layout`](https://developer.mozilla.org/en-US/docs/Web/CSS/table-layout)

    tableLayout auto
    tableLayout fixed

-}
tableLayout : TableLayout compatible -> Rule
tableLayout =
    decl1 "table-layout"



-- Text Properties


{-| Define the text direction/writing direction. [`direction`](https://developer.mozilla.org/en-US/docs/Web/CSS/direction)

    direction ltr
    direction rtl

-}
direction : Direction compatible -> Rule
direction =
    decl1 "direction"


{-| Sets the horizontal alignment of inline content. [`text-align`](https://developer.mozilla.org/en-US/docs/Web/CSS/text-align)

    textAlign right_
    textAlign left_
    textAlign center
    textAlign justify
    textAlign justifyAll

-}
textAlign : TextAlign compatible -> Rule
textAlign =
    decl1 "text-align"


{-| Specifies how the last line of a block or a line right before a forced line break is aligned when text-align is justify. [`text-align-last`](https://developer.mozilla.org/en-US/docs/Web/CSS/text-align-last)

    textAlignLast auto
    textAlignLast start
    textAlignLast end
    textAlignLast left_
    textAlignLast right_
    textAlignLast center
    textAlignLast justify

-}
textAlignLast : TextAlignLast compatible -> Rule
textAlignLast =
    decl1 "text-align-last"


{-| Specifies the decoration added to text. [`text-decoration`](https://developer.mozilla.org/en-US/docs/Web/CSS/text-decoration)

    textDecoration <color> <style> <line>

    textDecoration blue double underline

-}
textDecoration :
    Color compatibleA
    -> TextDecorationStyle compatibleB
    -> TextDecorationLine compatibleC
    -> Rule
textDecoration =
    decl3 "text-decoration"


{-| Specifies the color of the text-decoration-line. [`text-decoration-color`](https://developer.mozilla.org/en-US/docs/Web/CSS/text-decoration-color)

    textDecorationColor blue
    textDecorationColor (hex "639")
    textDecorationColor currentColor

-}
textDecorationColor : Color compatible -> Rule
textDecorationColor =
    decl1 "text-decoration-color"


{-| Specifies what kind of line decorations are added to the element. [`text-decoration-line`](https://developer.mozilla.org/en-US/docs/Web/CSS/text-decoration-line)

    textDecorationLine none
    textDecorationLine underline
    textDecorationLine overline
    textDecorationLine lineThrough

-}
textDecorationLine : TextDecorationLine compatible -> Rule
textDecorationLine =
    decl1 "text-decoration-line"


{-| Specifies what kind of line decorations are added to the element. [`text-decoration-line`](https://developer.mozilla.org/en-US/docs/Web/CSS/text-decoration-line)

    textDecorationLine2 underline overline

-}
textDecorationLine2 :
    TextDecorationLine compatibleA
    -> TextDecorationLine compatibleB
    -> Rule
textDecorationLine2 =
    decl2 "text-decoration-line"


{-| Specifies the style of the lines specified by the text-decoration-line property [`text-decoration-style`](https://developer.mozilla.org/en-US/docs/Web/CSS/text-decoration-style)

    textDecorationStyle solid
    textDecorationStyle double
    textDecorationStyle dotted
    textDecorationStyle dashed
    textDecorationStyle wavy

-}
textDecorationStyle : TextDecorationStyle compatible -> Rule
textDecorationStyle =
    decl1 "text-decoration-style"


{-| Indent the first line of text. [`text-indent`](https://developer.mozilla.org/en-US/docs/Web/CSS/text-indent)

    textIndent (percent 5)
    textIndent (rem 5)

-}
textIndent : Length_Percentage compatible -> Rule
textIndent =
    decl1 "text-indent"


{-| Specifies how the text content will be displayed, when it overflows the block containers. [`text-overflow`](https://developer.mozilla.org/en-US/docs/Web/CSS/text-overflow)

    textOverflow clip
    textOverflow ellipsis

-}
textOverflow : TextOverflow compatible -> Rule
textOverflow =
    decl1 "text-overflow"


{-| Applies one or more shadows to the text content of an element. [`text-shadow`](https://developer.mozilla.org/en-US/docs/Web/CSS/text-shadow)

    textShadow <offset-x> <offset-y> <blur-radius> <color>

    textShadow zero zero (px 10) gray

-}
textShadow :
    Length compatibleA
    -> Length compatibleB
    -> Length compatibleC
    -> Color compatibleD
    -> Rule
textShadow =
    decl4 "text-shadow"


{-| Transforms the case of the text. [`text-transform`](https://developer.mozilla.org/en-US/docs/Web/CSS/text-transform)

    textTransform none
    textTransform capitalize
    textTransform uppercase
    textTransform lowercase

-}
textTransform : TextTransform compatible -> Rule
textTransform =
    decl1 "text-transform"


{-| Sets the height between lines of text. [`line-height`](https://developer.mozilla.org/en-US/docs/Web/CSS/line-height)

    lineHeight (num 1.4)
    lineHeight (rem 1.6)
    lineHeight (percent 40)

-}
lineHeight : Length_Number_Percentage compatible -> Rule
lineHeight =
    decl1 "line-height"


{-| Sets the vertical positioning of an element relative to the current text baseline. [`vertical-align`](https://developer.mozilla.org/en-US/docs/Web/CSS/vertical-align)

    verticalAlign baseline
    verticalAlign sub
    verticalAlign super
    verticalAlign textTop
    verticalAlign textBottom
    verticalAlign middle
    verticalAlign top_
    verticalAlign bottom_

    verticalAlign (em 10)
    verticalAlign (px 4)

    verticalAlign (percent 20)

-}
verticalAlign : VerticalAlign compatible -> Rule
verticalAlign =
    decl1 "vertical-align"


{-| Sets the extra spacing between letters. [`letter-spacing`](https://developer.mozilla.org/en-US/docs/Web/CSS/letter-spacing)

    letterSpacing (px 5)
    letterSpacing (rem 0.5)

-}
letterSpacing : Length compatible -> Rule
letterSpacing =
    decl1 "letter-spacing"


{-| Specifies whether to break words when the content overflows the boundaries of its container. [`overflow-wrap`](https://developer.mozilla.org/en-US/docs/Web/CSS/overflow-wrap)

    overflowWrap normal
    overflowWrap breakWord

-}
overflowWrap : OverflowWrap compatible -> Rule
overflowWrap =
    decl1 "word-wrap"


{-| Sets the spacing between words. [`word-spacing`](https://developer.mozilla.org/en-US/docs/Web/CSS/word-spacing)

    wordSpacing (px 5)
    wordSpacing (rem 5)
    wordSpacing (percent 50)

-}
wordSpacing : Length_Percentage compatible -> Rule
wordSpacing =
    decl1 "word-spacing"


{-| Specifies how white space inside the element is handled. [`white-space`](https://developer.mozilla.org/en-US/docs/Web/CSS/white-space)

    whiteSpace normal
    whiteSpace nowrap
    whiteSpace pre
    whiteSpace preWrap
    whiteSpace preLine

-}
whiteSpace : WhiteSpace compatible -> Rule
whiteSpace =
    decl1 "white-space"


{-| Specifies how to break lines within words. [`word-break`](https://developer.mozilla.org/en-US/docs/Web/CSS/word-break)

    wordBreak normal
    wordBreak breakAll
    wordBreak keepAll

-}
wordBreak : WordBreak compatible -> Rule
wordBreak =
    decl1 "word-break"



-- Transform Properties


{-| Specifies whether or not the "back" side of a transformed element is visible when facing the user. [`backface-visibility`](https://developer.mozilla.org/en-US/docs/Web/CSS/backface-visibility)

    backfaceVisibility visible
    backfaceVisibility hidden

-}
backfaceVisibility : BackfaceVisibility compatible -> Rule
backfaceVisibility =
    decl1 "backface-visibility"


{-| Defines the perspective from which all child elements of the object are viewed. [`perspective`](https://developer.mozilla.org/en-US/docs/Web/CSS/perspective)

    perspective (px 5)
    perspective (rem 5)

-}
perspective : Length compatible -> Rule
perspective =
    decl1 "perspective"


{-| Defines the origin (the vanishing point for the 3D space) for the perspective property. [`perspective-origin`](https://developer.mozilla.org/en-US/docs/Web/CSS/perspective-origin)

    perspectiveOrigin <x-position>

    perspectiveOrigin (rem 10)
    perspectiveOrigin (percent 50)

-}
perspectiveOrigin : Length_Percentage compatible -> Rule
perspectiveOrigin =
    decl1 "perspective-origin"


{-| Defines the origin (the vanishing point for the 3D space) for the perspective property. [`perspective-origin`](https://developer.mozilla.org/en-US/docs/Web/CSS/perspective-origin)

    perspectiveOrigin <x-position> <y-position>

    perspectiveOrigin2 zero (percent 50)
    perspectiveOrigin2 (rem 10) (rem 10)
    perspectiveOrigin2 (rem 10) (percent 100)
    perspectiveOrigin2 (percent 50) (percent 50)

-}
perspectiveOrigin2 :
    Length_Percentage compatibleA
    -> Length_Percentage compatibleB
    -> Rule
perspectiveOrigin2 =
    decl2 "perspective-origin"


{-| Applies a 2D or 3D transformation to an element. [`transform`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform)

    transform none

    transform (matrix 1 2 3 4 5 6)
    transform (matrix3d 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1)

    transform (perspective (px 17))

    transform (rotate (turn 0.5))
    transform (rotate3d 1 2 3 (deg 10))
    transform (rotateX (deg 10))
    transform (rotateY (deg 10))
    transform (rotateZ (deg 10))

    transform (scale 2)
    transform (scale2 2 0.5)
    transform (scale3d 2.5 1.2 0.3)
    transform (scaleX 2)
    transform (scaleY 0.5)
    transform (scaleZ 0.3)

    transform (skew (deg 30))
    transform (skew2 (deg 30) (deg 20))
    transform (skewX (deg 30))
    transform (skewY (rad 1.07))

    transform (translate (px 12))
    transform (translate2 (px 12) (rem 50))
    transform (translate3d (px 12) (rem 50) (em 3))
    transform (translateX (em 2))
    transform (translateY (px 10))
    transform (translateZ (px 2))

-}
transform : TransformFunction compatible -> Rule
transform =
    decl1 "transform"


{-| Applies a 2D or 3D transformation to an element. [`transform`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform)

    transforms [scale 2, skew (deg 30)]

-}
transforms : List (TransformFunction compatible) -> Rule
transforms values =
    values
        |> List.map .value
        |> declaration "transform"


{-| Defines the origin of transformation for an element. [`transform-origin`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-origin)

    transformOrigin center
    transformOrigin left_

    transformOrigin (px 10)
    transformOrigin (rem 1)
    transformOrigin (percent 50)

-}
transformOrigin : PositionShorthand compatible -> Rule
transformOrigin =
    decl1 "transform-origin"


{-| Defines the origin of transformation for an element. [`transform-origin`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-origin)

    transformOrigin2 <x-offset> <y-offset>

    transformOrigin2 zero (rem 1)
    transformOrigin2 (px 10) (rem 2)
    transformOrigin2 (percent 50) (em 10)

-}
transformOrigin2 :
    Position compatibleA
    -> Position compatibleB
    -> Rule
transformOrigin2 =
    decl2 "transform-origin"


{-| Defines the origin of transformation for an element. [`transform-origin`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-origin)

    transformOrigin3 <x-offset> <y-offset> <z-offset>

    transformOrigin3 zero zero (rem 1)
    transformOrigin3 (px 10) (rem 3) (em 5)
    transformOrigin3 (percent 50) zero (percent 10)

-}
transformOrigin3 :
    Length_Percentage compatibleA
    -> Length_Percentage compatibleB
    -> Length_Percentage compatibleC
    -> Rule
transformOrigin3 =
    decl3 "transform-origin"


{-| Specifies how nested elements are rendered in 3D space. [`transform-style`](https://developer.mozilla.org/en-US/docs/Web/CSS/transform-style)

    transformStyle preserve3d
    transformStyle flat

-}
transformStyle : TransformStyle compatible -> Rule
transformStyle =
    decl1 "transform-style"



-- Transitions Properties


{-| Defines the transition between two states of an element. [`transition`](https://developer.mozilla.org/en-US/docs/Web/CSS/transition)

    transition <delay> <duration> <property> <timing-function>

    transition (ms 100) (s 1) all_ ease

-}
transition :
    Time compatibleA
    -> Time compatibleB
    -> TransitionProperty compatibleC
    -> TimingFunction compatibleD
    -> Rule
transition =
    decl4 "transition"


{-| Specifies when the transition effect will start. [`transition-delay`](https://developer.mozilla.org/en-US/docs/Web/CSS/transition-delay)

    transitionDelay (s 5)
    transitionDelay (ms 200)

-}
transitionDelay : Time compatible -> Rule
transitionDelay =
    decl1 "transition-delay"


{-| Specifies the number of seconds or milliseconds a transition effect should take to complete. [`transition-duration`](https://developer.mozilla.org/en-US/docs/Web/CSS/transition-duration)

    transitionDuration (s 5)
    transitionDuration (ms 200)

-}
transitionDuration : Time compatible -> Rule
transitionDuration =
    decl1 "transition-duration"


{-| Specifies the names of the CSS properties to which a transition effect should be applied. [`transition-property`](https://developer.mozilla.org/en-US/docs/Web/CSS/transition-property)

    transitionProperty none
    transitionProperty all

    transitionProperty (str "width")
    transitionProperty (str "height, width, top");

-}
transitionProperty : TransitionProperty compatible -> Rule
transitionProperty =
    decl1 "transition-property"


{-| Specifies the speed curve of the transition effect. [`transition-timing-function`](https://developer.mozilla.org/en-US/docs/Web/CSS/transition-timing-function)

    transitionTimingFunction ease
    transitionTimingFunction linear
    transitionTimingFunction easeIn

    transitionTimingFunction (steps 15 end)
    transitionTimingFunction (cubicBezier 0 0 1 1)

-}
transitionTimingFunction : TimingFunction compatible -> Rule
transitionTimingFunction =
    decl1 "transition-timing-function"



-- Visual Formatting Properties


{-| Specifies how an element is displayed onscreen. [`display`](https://developer.mozilla.org/en-US/docs/Web/CSS/display)

    display none
    display block
    display inline
    display table
    display flex_
    display listItem
    display tableRowGroup
    display tableHeaderGroup
    display tableFooterGroup
    display tableRow
    display tableCell
    display tableColumnGroup
    display tableColumn
    display tableCaption
    display inlineBlock
    display inlineListItem
    display inlineTable
    display inlineFlex

-}
display : Display compatible -> Rule
display =
    decl1 "display"


{-| Specifies how an element is positioned. [`position`](https://developer.mozilla.org/en-US/docs/Web/CSS/position)

    position static
    position relative
    position absolute
    position fixed
    position sticky

-}
position : Position_ compatible -> Rule
position =
    decl1 "position"


{-| Specify the location of the top edge of the positioned element. [`top`](https://developer.mozilla.org/en-US/docs/Web/CSS/top)

    top auto
    top (px 10)
    top (rem 10)
    top (percent 50)

-}
top : Auto_Length_Percentage compatible -> Rule
top =
    decl1 "top"


{-| Specify the location of the right edge of the positioned element. [`right`](https://developer.mozilla.org/en-US/docs/Web/CSS/right)

    right auto
    right (px 10)
    right (rem 10)
    right (percent 50)

-}
right : Auto_Length_Percentage compatible -> Rule
right =
    decl1 "right"


{-| Specify the location of the bottom edge of the positioned element. [`bottom`](https://developer.mozilla.org/en-US/docs/Web/CSS/bottom)

    bottom auto
    bottom (px 10)
    bottom (rem 10)
    bottom (percent 50)

-}
bottom : Auto_Length_Percentage compatible -> Rule
bottom =
    decl1 "bottom"


{-| Specify the location of the left edge of the positioned element. [`left`](https://developer.mozilla.org/en-US/docs/Web/CSS/left)

    left auto
    left (px 10)
    left (rem 10)
    left (percent 50)

-}
left : Auto_Length_Percentage compatible -> Rule
left =
    decl1 "left"


{-| Specifies whether or not a box should float. [`float`](https://developer.mozilla.org/en-US/docs/Web/CSS/float)

    float left_
    float right_
    float none

-}
float : Float_ compatible -> Rule
float =
    decl1 "float"


{-| Specifies the placement of an element in relation to floating elements. [`clear`](https://developer.mozilla.org/en-US/docs/Web/CSS/clear)

    clear none
    clear left_
    clear right_
    clear both

-}
clear : Clear compatible -> Rule
clear =
    decl1 "clear"


{-| Specifies a layering or stacking order for positioned elements. [`z-index`](https://developer.mozilla.org/en-US/docs/Web/CSS/z-index)

    zIndex (int 1)
    zIndex (int 2)
    zIndex (int 3)

-}
zIndex : Integer compatible -> Rule
zIndex =
    decl1 "z-index"


{-| Specifies the treatment of content that overflows the element's box. [`overflow`](https://developer.mozilla.org/en-US/docs/Web/CSS/overflow)

    overflow visible
    overflow hidden
    overflow scroll
    overflow auto

-}
overflow : Overflow compatible -> Rule
overflow =
    decl1 "overflow"


{-| Specifies how to manage the content when it overflows the width of the element's content area. [`overflow-x`](https://developer.mozilla.org/en-US/docs/Web/CSS/overflow-x)

    overflowX visible
    overflowX hidden
    overflowX scroll
    overflowX auto

-}
overflowX : Overflow compatible -> Rule
overflowX =
    decl1 "overflow-x"


{-| Specifies how to manage the content when it overflows the height of the element's content area. [`overflow-y`](https://developer.mozilla.org/en-US/docs/Web/CSS/overflow-y)

    overflowY visible
    overflowY hidden
    overflowY scroll
    overflowY auto

-}
overflowY : Overflow compatible -> Rule
overflowY =
    decl1 "overflow-y"


{-| Specifies whether or not an element is resizable by the user. [`resize`](https://developer.mozilla.org/en-US/docs/Web/CSS/resize)

    resize none
    resize both
    resize horizontal
    resize vertical

-}
resize : Resize compatible -> Rule
resize =
    decl1 "resize"


{-| Specifies whether or not an element is visible. [`visibility`](https://developer.mozilla.org/en-US/docs/Web/CSS/visibility)

    visibility visible
    visibility hidden
    visibility collapse

-}
visibility : Visibility compatible -> Rule
visibility =
    decl1 "visibility"


{-| Specify the type of cursor. [`cursor`](https://developer.mozilla.org/en-US/docs/Web/CSS/cursor)

    cursor auto
    cursor none
    cursor alias
    cursor allScroll
    cursor cell
    cursor contextMenu
    cursor colResize
    cursor copy
    cursor crosshair
    cursor default
    cursor eResize
    cursor ewResize
    cursor grab
    cursor grabbing
    cursor help
    cursor move
    cursor nResize
    cursor neResize
    cursor neswResize
    cursor nsResize
    cursor nwResize
    cursor nwseResize
    cursor noDrop
    cursor notAllowed
    cursor pointer
    cursor progress
    cursor rowResize
    cursor sResize
    cursor seResize
    cursor swResize
    cursor text
    cursor verticalText
    cursor wResize
    cursor wait
    cursor zoomIn
    cursor zoomOut

-}
cursor : Cursor compatible -> Rule
cursor =
    decl1 "cursor"


{-| Applies one or more drop-shadows to the element's box. [`box-shadow`](https://developer.mozilla.org/en-US/docs/Web/CSS/box-shadow)

    boxShadow <offset-x> <offset-y> <blur-radius> <spread-radius> <color>

    boxShadow (px 2) (px 2) (px 2) (px 1) black

-}
boxShadow :
    Length compatibleA
    -> Length compatibleB
    -> Length compatibleC
    -> Length compatibleD
    -> Color compatibleE
    -> Rule
boxShadow =
    decl5 "box-shadow"


{-| Alter the default CSS box model. [`box-sizing`](https://developer.mozilla.org/en-US/docs/Web/CSS/box-sizing)

    boxSizing borderBox
    boxSizing contentBox

-}
boxSizing : BoxSizing compatible -> Rule
boxSizing =
    decl1 "box-sizing"



{-
   CSS Data Type Values
-}
-- Angle


createAngle : String -> number -> Angle {}
createAngle unit amount =
    { value = (toString amount) ++ unit
    , angle = Compatible
    }


{-| Represents an angle in degrees. One full circle is `deg 360`.
-}
deg : number -> Angle {}
deg =
    createAngle "deg"


{-| Represents an angle in gradians. One full circle is `grad 400`.
-}
grad : number -> Angle {}
grad =
    createAngle "grad"


{-| Represents an angle in radians. One full circle is 2π radians which approximates to `rad 6.2832`. `rad 1` is 180/π degrees.
-}
rad : number -> Angle {}
rad =
    createAngle "rad"


{-| Represents the number of turns the angle is. One full circle is `turn 1`.
-}
turn : number -> Angle {}
turn =
    createAngle "turn"



-- Color


createColor : String -> Color {}
createColor value =
    { value = value
    , color = Compatible
    }


{-| The transparent keyword represents a fully transparent color. [`transparent`](https://developer.mozilla.org/en-US/docs/Web/CSS/color_value#transparent_keyword)

    transparent

-}
transparent : Color {}
transparent =
    createColor "transparent"


{-| The currentColor keyword represents the calculated value of the element's color property. It allows to make the color properties inherited by properties or child's element properties that do not inherit it by default. [`currentcolor`](https://developer.mozilla.org/en-US/docs/Web/CSS/color_value#currentcolor_keyword)

    currentColor

-}
currentColor : Color {}
currentColor =
    createColor "currentcolor"


{-| Color in [`hexadecimal`](https://developer.mozilla.org/en-US/docs/Web/CSS/color_value#rgb) notation.

    hex "663399"
    hex "639"

-}
hex : String -> Color {}
hex value =
    createColor ("#" ++ value)


{-| Color in [`rgb`](https://developer.mozilla.org/en-US/docs/Web/CSS/color_value#rgb) notation.

    rgb 102 51 153

-}
rgb : Int -> Int -> Int -> Color {}
rgb red green blue =
    createColor
        ("rgba("
            ++ (toString red)
            ++ ", "
            ++ (toString green)
            ++ ", "
            ++ (toString blue)
            ++ ")"
        )


{-| Color in [`rgba`](https://developer.mozilla.org/en-US/docs/Web/CSS/color_value#rgba) notation.

    rgba 102 51 153 0.8

-}
rgba : Int -> Int -> Int -> Float -> Color {}
rgba red green blue alpha =
    createColor
        ("rgba("
            ++ (toString red)
            ++ ", "
            ++ (toString green)
            ++ ", "
            ++ (toString blue)
            ++ ", "
            ++ (toString alpha)
            ++ ")"
        )


{-| Color in [`hsl`](https://developer.mozilla.org/en-US/docs/Web/CSS/color_value#hsl) notation.

    hsl 270 50 40

-}
hsl : Int -> Int -> Int -> Color {}
hsl hue saturation lightness =
    createColor
        ("hsl("
            ++ (toString hue)
            ++ ", "
            ++ (toString saturation)
            ++ "%, "
            ++ (toString lightness)
            ++ "%)"
        )


{-| Color in [`hsla`](https://developer.mozilla.org/en-US/docs/Web/CSS/color_value#hsla) notation.

    hsla 270 50 40 0.4

-}
hsla : Int -> Int -> Int -> Float -> Color {}
hsla hue saturation lightness alpha =
    createColor
        ("hsl("
            ++ (toString hue)
            ++ ", "
            ++ (toString saturation)
            ++ "%, "
            ++ (toString lightness)
            ++ "%, "
            ++ (toString alpha)
            ++ ")"
        )



-- Integer


{-|
    int 5
-}
int : Int -> Integer (Number {})
int n =
    { value = (toString n)
    , integer = Compatible
    , number = Compatible
    , animationIterationCount = Compatible
    , borderImageSlice = Compatible
    , borderImageWidth = Compatible
    , length_number = Compatible
    , length_number_percentage = Compatible
    , number_percentage = Compatible
    }



-- Length


createLength : String -> number -> Length {}
createLength unit value =
    { value = ((toString value) ++ unit)
    , length = Compatible
    , position = Compatible
    , positionShorthand = Compatible
    , backgroundSize = Compatible
    , backgroundSizeShorthand = Compatible
    , borderImageWidth = Compatible
    , verticalAlign = Compatible
    , auto_length_percentage = Compatible
    , length_number = Compatible
    , length_number_percentage = Compatible
    , length_percentage = Compatible
    }


{-| Length in [`px`](https://developer.mozilla.org/en-US/docs/Web/CSS/length#px).

    px 1

-}
px : number -> Length {}
px =
    createLength "px"


{-| Length in [`em`](https://developer.mozilla.org/en-US/docs/Web/CSS/length#em).

    em 1.5

-}
em : number -> Length {}
em =
    createLength "em"


{-| Length in [`rem`](https://developer.mozilla.org/en-US/docs/Web/CSS/length#rem).

    rem 2

-}
rem : number -> Length {}
rem =
    createLength "rem"


{-| Length in [`vh`](https://developer.mozilla.org/en-US/docs/Web/CSS/length#vh).

    vh 100

-}
vh : number -> Length {}
vh =
    createLength "vh"


{-| Length in [`vw`](https://developer.mozilla.org/en-US/docs/Web/CSS/length#vw).

    vw 100

-}
vw : number -> Length {}
vw =
    createLength "vw"


{-| Length in [`vmin`](https://developer.mozilla.org/en-US/docs/Web/CSS/length#vmin).

    vmin 10

-}
vmin : number -> Length {}
vmin =
    createLength "vmin"


{-| Length in [`vmax`](https://developer.mozilla.org/en-US/docs/Web/CSS/length#vmax).

    vmax 50

-}
vmax : number -> Length {}
vmax =
    createLength "vmax"


{-| Length with the value 0 without unit.

    zero

-}
zero : Length {}
zero =
    createLength "" 0



-- Number


{-|
    num 12.5
-}
num : number -> Number {}
num n =
    { value = (toString n)
    , number = Compatible
    , animationIterationCount = Compatible
    , borderImageSlice = Compatible
    , borderImageWidth = Compatible
    , length_number = Compatible
    , length_number_percentage = Compatible
    , number_percentage = Compatible
    }



-- Percentage


{-|

    percent 15

-}
percent : number -> Percentage {}
percent value =
    { value = (toString value) ++ "%"
    , percentage = Compatible
    , position = Compatible
    , positionShorthand = Compatible
    , backgroundSize = Compatible
    , backgroundSizeShorthand = Compatible
    , borderImageSlice = Compatible
    , borderImageWidth = Compatible
    , verticalAlign = Compatible
    , auto_length_percentage = Compatible
    , length_percentage = Compatible
    , length_number_percentage = Compatible
    , number_percentage = Compatible
    }



-- String


{-|
    str "Hello World"
-}
str : String -> Str {}
str value =
    { value = value
    , string = Compatible
    , content = Compatible
    , transitionProperty = Compatible
    }



-- Time


createTime : String -> number -> Time {}
createTime unit value =
    { value = (toString value) ++ unit
    , time = Compatible
    }


{-| Time in [`seconds`](https://developer.mozilla.org/en-US/docs/Web/CSS/time#s).

    s 15

-}
s : number -> Time {}
s =
    createTime "s"


{-| Time in [`milliseconds`](https://developer.mozilla.org/en-US/docs/Web/CSS/time#ms).

    ms 200

-}
ms : number -> Time {}
ms =
    createTime "ms"



-- Url


{-|
    url "http://example.com/image.jpg"
-}
url : String -> Url {}
url value =
    { value = "url(\"" ++ value ++ "\")"
    , url = Compatible
    , image = Compatible
    , content = Compatible
    }



-- Other Values


{-|

[_`columnSpan`_](#columnSpan) — The element spans across all columns. Content in the normal flow that appears before the element is automatically balanced across all columns before the element appears. The element establishes a new block formatting context.

    columnSpan all_

[_`transitionProperty`_](#transitionProperty) — All properties that can have an animated transition will do so.

    transitionProperty all_

-}
all_ : All_ {}
all_ =
    { value = "all"
    , all_ = Compatible
    , columnSpan = Compatible
    , transitionProperty = Compatible
    }


{-|

[_`backgroundSize`_](#backgroundSize) — A keyword that scales the background image in the corresponding direction such that its intrinsic proportion is maintained.

    backgroundSize auto

[_`columnFill`_](#columnFill) — Columns are filled sequentially.

    columnFill auto

[_`pageBreak`_](#pageBreak) / [_`pageBreakInside`_](#pageBreakInside) — Automatic page breaks (neither forced nor forbidden).

    pageBreak auto
    pageBreakInside auto

[_`tableLayout`_](#tableLayout) — An automatic table layout algorithm is commonly used by most browsers for table layout. The width of the table and its cells depends on the content thereof.

    tableLayout auto

[_`textAlignLast`_](#textAlignLast) — The affected line is aligned per the value of text-align, unless text-align is justify, in which case the effect is the same as setting text-align-last to left.

    textAlignLast auto

[_`overflow`_](#overflow) — Depends on the user agent. Desktop browsers like Firefox provide scrollbars if content overflows.

    overflow auto

[_`cursor`_](#cursor) — Default. The browser sets a cursor.

    cursor auto

-}
auto : Auto {}
auto =
    { value = "auto"
    , auto = Compatible
    , backgroundSize = Compatible
    , backgroundSizeShorthand = Compatible
    , borderImageWidth = Compatible
    , columnFill = Compatible
    , pageBreak = Compatible
    , pageBreakInside = Compatible
    , tableLayout = Compatible
    , textAlignLast = Compatible
    , overflow = Compatible
    , cursor = Compatible
    , auto_length_percentage = Compatible
    }


{-|

[_`alignItems`_](#alignItems) — All flex items are aligned such that their baselines align. The item with the largest distance between its cross-start margin edge and its baseline is flushed with the cross-start edge of the line.

    alignItems baseline

[_`verticalAlign`_](#verticalAlign) — Aligns the baseline of the element with the baseline of its parent. The baseline of some replaced elements, like <textarea>, is not specified by the HTML specification, meaning that their behavior with this keyword may change from one browser to the other.

    verticalAlign baseline

-}
baseline : Baseline {}
baseline =
    { value = "baseline"
    , baseline = Compatible
    , alignItems = Compatible
    , verticalAlign = Compatible
    }


{-|

[_`backgroundClip`_](#backgroundClip) — The background extends to the outside edge of the border (but underneath the border in z-ordering).

    backgroundClip borderBox

[_`backgroundOrigin`_](#backgroundOrigin) — The background extends to the outside edge of the border (but underneath the border in z-ordering).

    backgroundOrigin borderBox

[_`boxSizing`_](#boxSizing) — The width and height properties include the content, the padding and border, but not the margin. This is the box model used by Internet Explorer when the document is in Quirks mode. Note that padding and border will be inside of the box e.g.  .box {width: 350px; border: 10px solid black;} leads to a box rendered in the browser of width: 350px. The content box can't be negative and is floored to 0, making it impossible to use border-box to make the element disappear.
Here the dimension is calculated as, width = border + padding + width of the content, and height = border + padding + height of the content.

    boxSizing borderBox

-}
borderBox : BorderBox {}
borderBox =
    { value = "border-box"
    , borderBox = Compatible
    , backgroundClip = Compatible
    , backgroundOrigin = Compatible
    , boxSizing = Compatible
    }


{-|

[_`animationFillMode`_](#animationFillMode) — The animation will follow the rules for both forwards and backwards, thus extending the animation properties in both directions.

    animationFillMode both

[_`clear`_](#clear) — Is a keyword indicating that the element is moved down to clear past both left and right floats.

    clear both

[_`resize`_](#resize) — The element displays a mechanism for allowing the user to resize the element, which may be resized both horizontally and vertically.

    resize both

-}
both : Both {}
both =
    { value = "both"
    , both = Compatible
    , animationFillMode = Compatible
    , clear = Compatible
    , resize = Compatible
    }


{-|

[_`position`_](Styled-Types#Position) — Bottom position

    bottom_

[_`captionSide`_](#captionSide) — Is a keyword indicating that the caption box should be positioned below the table.

    captionSide bottom_

[_`verticalAlign`_](#verticalAlign) — Align the bottom of the element and its descendants with the bottom of the entire line.

    verticalAlign bottom_

-}
bottom_ : Bottom_ {}
bottom_ =
    { value = "bottom"
    , bottom_ = Compatible
    , positionShorthand = Compatible
    , captionSide = Compatible
    , verticalAlign = Compatible
    }


{-|

[_`position`_](Styled-Types#Position) — Center position

    center

[_`alignContent`_](#alignContent) — Lines are packed toward the center of the flex container. The lines are flushed with each other and aligned in the center of the flex container. Space between the cross-start edge of the flex container and first line and between cross-end of the flex container and the last line is the same.

    alignContent center

[_`alignItems`_](#alignItems) — The flex item's margin box is centered within the line on the cross-axis. If the cross-size of the item is larger than the flex container, it will overflow equally in both directions.

    alignItems center

[_`justifyContent`_](#justifyContent) — The flex items are packed toward the center of the line. The flex items are flushed with each other and aligned in the center of the line. Space between the main-start edge of the line and first item and between main-end and the last item of the line is the same.

    justifyContent center

[_`textAlign`_](#textAlign) — The inline contents are centered within the line box.

    textAlign center

[_`textAlignLast`_](#textAlignLast) — The inline contents are centered within the line box.

    textAlignLast center

-}
center : Center {}
center =
    { value = "center"
    , center = Compatible
    , positionShorthand = Compatible
    , alignContent = Compatible
    , alignItems = Compatible
    , justifyContent = Compatible
    , textAlign = Compatible
    , textAlignLast = Compatible
    }


{-|

[_`borderCollapse`_](#borderCollapse) — Is a keyword requesting the use of the collapsed-border table rendering model.

    borderCollapse collapse

[_`visibility`_](#visibility) — For table rows, columns, column groups, and row groups the row(s) or column(s) are hidden and the space they would have occupied is removed (as if display: none were applied to the column/row of the table). However, the size of other rows and columns is still calculated as though the cells in the collapsed row(s) or column(s) are present. This was designed for fast removal of a row/column from a table without having to recalculate widths and heights for every portion of the table. For XUL elements, the computed size of the element is always zero, regardless of other styles that would normally affect the size, although margins still take effect. For other elements, collapse is treated the same as hidden.

    visibility collapse

-}
collapse : Collapse {}
collapse =
    { value = "collapse"
    , collapse = Compatible
    , borderCollapse = Compatible
    , visibility = Compatible
    }


{-|

[_`backgroundClip`_](#backgroundClip) — The background is painted within (clipped to) the content box.

    backgroundClip contentBox

[_`backgroundOrigin`_](#backgroundOrigin) — The background is painted within (clipped to) the content box.

    backgroundOrigin contentBox

[_`boxSizing`_](#boxSizing) — This is the initial and default value as specified by the CSS standard. The width and height properties are measured including only the content, but not the padding, border or margin. Note: Padding, border & margin will be outside of the box e.g. IF .box {width: 350px;} THEN you apply {border: 10px solid black;} RESULT {rendered in the browser} a box of width: 370px.
So simply the dimension of element is calculated as, width = width of the content, and height = height of the content (excluding the values of border and padding).

    boxSizing contentBox

-}
contentBox : ContentBox {}
contentBox =
    { value = "content-box"
    , contentBox = Compatible
    , backgroundClip = Compatible
    , backgroundOrigin = Compatible
    , boxSizing = Compatible
    }


{-|

[_`borderStyle`_](#borderStyle) — Displays a series of short square-ended dashes or line segments. The exact size and length of the segments are not defined by the specification and are implementation-specific.

    borderStyle dashed

[_`textDecorationStyle`_](#textDecorationStyle) — Draws a dashed line.

    textDecorationStyle dashed

-}
dashed : Dashed {}
dashed =
    { value = "dashed"
    , dashed = Compatible
    , borderStyle = Compatible
    , textDecorationStyle = Compatible
    }


{-|

[_`borderStyle`_](#borderStyle) — Displays a series of rounded dots. The spacing of the dots is not defined by the specification and is implementation-specific. The radius of the dots is half the calculated border-width.

    borderStyle dotted

[_`textDecorationStyle`_](#textDecorationStyle) — Draws a dotted line.

    textDecorationStyle dotted

-}
dotted : Dotted {}
dotted =
    { value = "dotted"
    , dotted = Compatible
    , borderStyle = Compatible
    , textDecorationStyle = Compatible
    }


{-|

[_`borderStyle`_](#borderStyle) — Displays two straight lines that add up to the pixel amount defined as border-width .

    borderStyle double

[_`textDecorationStyle`_](#textDecorationStyle) — Draws a double line.

    textDecorationStyle double

-}
double : Double {}
double =
    { value = "double"
    , double = Compatible
    , borderStyle = Compatible
    , textDecorationStyle = Compatible
    }


{-|

[_`steps`_](#steps) — Denotes a right-continuous function, so that the last step happens when the animation ends.

    steps 15 end

[_`end`_](#end) — The same as right if direction is left-to-right and left if direction is right-to-left.

    textAlignLast end

-}
end : End {}
end =
    { value = "end"
    , end = Compatible
    , stepsDirection = Compatible
    , textAlignLast = Compatible
    }


{-|

[_`backgroundAttachment`_](#backgroundAttachment) — This keyword means that the background is fixed with regard to the viewport. Even if an element has a scrolling mechanism, a ‘fixed’ background doesn't move with the element.

    backgroundAttachment fixed

[_`tableLayout`_](#tableLayout) — Table and column widths are set by the widths of table and col elements or by the width of the first row of cells. Cells in subsequent rows do not affect column widths.
Under the "fixed" layout method, the entire table can be rendered once the first table row has been downloaded and analyzed. This can speed up rendering time over the "automatic" layout method, but subsequent cell content may not fit in the column widths provided. Any cell that has content that overflows uses the overflow property to determine whether to clip the overflow content, but only if the table has a known width, otherwise it won't overflow the cells.

    tableLayout fixed

[_`position`_](#position) — Do not leave space for the element. Instead, position it at a specified position relative to the screen's viewport and don't move it when scrolled. When printing, position it at that fixed position on every page. This value always creates a new stacking context. When an ancestor has the transform property set to something different from none then this ancestor is used as container instead of the viewport (see CSS Transforms Spec).

    position fixed

-}
fixed : Fixed {}
fixed =
    { value = "fixed"
    , fixed = Compatible
    , backgroundAttachment = Compatible
    , tableLayout = Compatible
    , position_ = Compatible
    }


{-|

[_`alignContent`_](#alignContent) — Lines are packed starting from the cross-start. Cross-start edge of the first line and cross-start edge of the flex container are flushed together. Each following line is flush with the preceding.

    alignContent flexStart

[_`alignItems`_](#alignItems) — The cross-start margin edge of the flex item is flushed with the cross-start edge of the line.

    alignItems flexStart

[_`justifyContent`_](#justifyContent) — The flex items are packed starting from the main-start. Margins of the first flex item is flushed with the main-start edge of the line and each following flex item is flushed with the preceding.

    justifyContent flexStart

-}
flexStart : FlexStart {}
flexStart =
    { value = "flex-start"
    , flexStart = Compatible
    , alignContent = Compatible
    , alignItems = Compatible
    , justifyContent = Compatible
    }


{-|

[_`alignContent`_](#alignContent) — Lines are packed starting from the cross-end. Cross-end of the last line and cross-end of the flex container are flushed together. Each preceding line is flushed with the following line.

    alignContent flexEnd

[_`alignItems`_](#alignItems) — The cross-end margin edge of the flex item is flushed with the cross-end edge of the line.

    alignItems flexEnd

[_`justifyContent`_](#justifyContent) — The flex items are packed starting from the main-end. The margin edge of the last flex item is flushed with the main-end edge of the line and each preceding flex item is flushed with the following.

    justifyContent flexEnd

-}
flexEnd : FlexEnd {}
flexEnd =
    { value = "flex-end"
    , flexEnd = Compatible
    , alignContent = Compatible
    , alignItems = Compatible
    , justifyContent = Compatible
    }


{-|

[_`borderStyle`_](#borderStyle) — Like for the none keyword, displays no border. In that case, except if a background image is set, the calculated values of border-width will be 0, even if specified otherwise through the property. In case of table cell and border collapsing, the hidden value has the highest priority: it means that if any other conflicting border is set, it won't be displayed.

    borderStyle hidden

[_`backfaceVisibility`_](#backfaceVisibility) — Like for the none keyword, displays no border. In that case, except if a background image is set, the calculated values of border-width will be 0, even if specified otherwise through the property. In case of table cell and border collapsing, the hidden value has the highest priority: it means that if any other conflicting border is set, it won't be displayed.

    backfaceVisibility hidden

[_`overflow`_](#overflow) — The content is clipped and no scrollbars are provided.

    overflow hidden

[_`visibility`_](#visibility) — The box is invisible (fully transparent, nothing is drawn), but still affects layout.  Descendants of the element will be visible if they have visibility: visible (this doesn't work in IE up to version 7).

    visibility hidden

-}
hidden : Hidden {}
hidden =
    { value = "hidden"
    , hidden = Compatible
    , borderStyle = Compatible
    , backfaceVisibility = Compatible
    , overflow = Compatible
    , visibility = Compatible
    }


{-|

[_`textAlign`_](#textAlign) — The inline contents are justified. Text should be spaced to line up its left and right edges to the left and right edges of the line box, except for the last line.

    textAlign justify

[_`textAlignLast`_](#textAlignLast) — The text is justified. Text should line up their left and right edges to the left and right content edges of the paragraph.

    textAlignLast justify

-}
justify : Justify {}
justify =
    { value = "justify"
    , justify = Compatible
    , textAlign = Compatible
    , textAlignLast = Compatible
    }


{-|

[_`position`_](Styled-Types#Position) — Left position

    left_

[_`pageBreak`_](#pageBreak) — Force page breaks after the element so that the next page is formatted as a left page.

    pageBreak left_

[_`textAlign`_](#textAlign) — The inline contents are aligned to the left edge of the line box.

    textAlign left_

[_`textAlignLast`_](#textAlignLast) — The inline contents are aligned to the left edge of the line box.

    textAlignLast left_

[_`float`_](#float) — Is a keyword indicating that the element must float on the left side of its containing block.

    float left_

[_`clear`_](#clear) — Is a keyword indicating that the element is moved down to clear past left floats.

    clear left_

-}
left_ : Left_ {}
left_ =
    { value = "left"
    , left_ = Compatible
    , positionShorthand = Compatible
    , pageBreak = Compatible
    , textAlign = Compatible
    , textAlignLast = Compatible
    , float_ = Compatible
    , clear = Compatible
    }


{-|

[_`animationFillMode`_](#animationFillMode) — The animation will not apply any styles to the target when it's not executing; it will instead be displayed using its state based on all other CSS rules applied to it.

    animationFillMode none

[_`borderStyle`_](#borderStyle) — Like for the hidden keyword, displays no border. In that case, except if a background image is set, the calculated values of border-width will be 0, even if specified otherwise through the property. In case of table cell and border collapsing, the none value has the lowest priority: it means that if any other conflicting border is set, it will be displayed.

    borderStyle none

[_`fontVariantLigatures`_](#fontVariantLigatures) — Is a keyword preventing the case of all characters to be changed.

    fontVariantLigatures none

[_`listStyleType`_](#listStyleType) — No marker is shown.

    listStyleType none

[_`columnSpan`_](#columnSpan) — The element does not span multiple columns.

    columnSpan none

[_`textDecorationLine`_](#textDecorationLine) — Produces no text decoration.

    textDecorationLine none

[_`textTransform`_](#textTransform) — Is a keyword preventing the case of all characters to be changed.

    textTransform none

[_`transitionProperty`_](#transitionProperty) — No properties will transition.

    transitionProperty none

[_`display`_](#display) — Turns off the display of an element (it has no effect on layout); all descendant elements also have their display turned off. The document is rendered as though the element did not exist.
To render an element box's dimensions, yet have its contents be invisible, see the visibility property.

    display none

[_`float`_](#float) — Is a keyword indicating that the element must not float.

    float none

[_`clear`_](#clear) — Is a keyword indicating that the element is not moved down to clear past floating elements.

    clear none

[_`resize`_](#resize) — The element offers no user-controllable method for resizing the element.

    resize none

[_`cursor`_](#cursor) — No cursor is rendered for the element.

    cursor none

-}
none : None {}
none =
    { value = "none"
    , none = Compatible
    , animationFillMode = Compatible
    , borderStyle = Compatible
    , fontVariantLigatures = Compatible
    , listStyleType = Compatible
    , columnSpan = Compatible
    , textDecorationLine = Compatible
    , textTransform = Compatible
    , transformFunction = Compatible
    , transitionProperty = Compatible
    , display = Compatible
    , float_ = Compatible
    , clear = Compatible
    , resize = Compatible
    , cursor = Compatible
    }


{-|

[_`animationDirection`_](#animationDirection) — The animation should play forward each cycle. In other words, each time the animation cycles, the animation will reset to the beginning state and start over again. This is the default animation direction setting. [`normal`](https://developer.mozilla.org/en-US/docs/Web/CSS/animation-direction#Values)

    animationDirection normal

[_`fontVariantAlternates`_](#fontVariantAlternates) — This keyword leads to the deactivation of the use of such alternate glyphs.

    fontVariantAlternates normal

[_`fontVariantCaps`_](#fontVariantCaps) — This keyword leads to the deactivation of the use of such alternate glyphs.

    fontVariantCaps normal

[_`fontVariantEastAsian`_](#fontVariantEastAsian) — This keyword leads to the deactivation of the use of such alternate glyphs.

    fontVariantEastAsian normal

[_`fontVariantLigatures`_](#fontVariantLigatures) — This keyword leads to the activation of the usual ligatures and contextual forms needed for correct rendering. The ligatures and forms activated depend on the font, language and kind of script. This is the default value.

    fontVariantLigatures normal


[_`fontVariantNumeric`_](#fontVariantNumeric) — This keyword leads to the deactivation of the use of such alternate glyphs.

    fontVariantNumeric normal


[_`overflowWrap`_](#overflowWrap) — Indicates that lines may only break at normal word break points.

    overflowWrap normal


[_`whiteSpace`_](#whiteSpace) — Sequences of whitespace are collapsed. Newline characters in the source are handled as other whitespace. Breaks lines as necessary to fill line boxes.

    whiteSpace normal


[_`wordBreak`_](#wordBreak) — Use the default line break rule.

    wordBreak normal

-}
normal : Normal {}
normal =
    { value = "normal"
    , normal = Compatible
    , animationDirection = Compatible
    , fontVariantAlternates = Compatible
    , fontVariantCaps = Compatible
    , fontVariantEastAsian = Compatible
    , fontVariantLigatures = Compatible
    , fontVariantNumeric = Compatible
    , overflowWrap = Compatible
    , whiteSpace = Compatible
    , wordBreak = Compatible
    }


{-|

[_`flexWrap`_](#flexWrap) — The flex items are laid out in a single line which may cause the flex container to overflow. The cross-start is either equivalent to start or before depending [`flexDirection`](#flexDirection) value.

    flexWrap nowrap

[_`whiteSpace`_](#whiteSpace) — Collapses whitespace as for normal, but suppresses line breaks (text wrapping) within text.

    whiteSpace nowrap

-}
nowrap : Nowrap {}
nowrap =
    { value = "nowrap"
    , nowrap = Compatible
    , flexWrap = Compatible
    , whiteSpace = Compatible
    }


{-|

[_`backgroundClip`_](#backgroundClip) — No background is drawn below the border (background extends to the outside edge of the padding).

    backgroundClip paddingBox

[_`backgroundOrigin`_](#backgroundOrigin) — No background is drawn below the border (background extends to the outside edge of the padding).

    backgroundOrigin paddingBox

-}
paddingBox : PaddingBox {}
paddingBox =
    { value = "padding-box"
    , paddingBox = Compatible
    , backgroundClip = Compatible
    , backgroundOrigin = Compatible
    }


{-|

[_`backgroundRepeat`_](#backgroundRepeat) — The image is repeated as much as needed to cover the whole background image painting area. The last image will be clipped if it doesn't fit.

    backgroundRepeat repeat

[_`borderImageRepeat`_](#borderImageRepeat) — Keyword indicating that the image must be repeated until it fills the gap between the two borders.

    borderImageRepeat repeat

-}
repeat : Repeat {}
repeat =
    { value = "repeat"
    , repeat = Compatible
    , backgroundRepeat = Compatible
    , backgroundRepeatShorthand = Compatible
    , borderImageRepeat = Compatible
    }


{-|

[_`position`_](Styled-Types#Position) — Right position

    right_

[_`pageBreak`_](#pageBreak) — Force page breaks after the element so that the next page is formatted as a right page.

    pageBreak right_

[_`textAlign`_](#textAlign) — The inline contents are aligned to the right edge of the line box.

    textAlign right_

[_`textAlignLast`_](#textAlignLast) — The inline contents are aligned to the right edge of the line box.

    textAlignLast right_

[_`float`_](#float) — Is a keyword indicating that the element must float on the right side of its containing block.

    float right_

[_`clear`_](#clear) — Is a keyword indicating that the element is moved down to clear past right floats.

    clear right_

-}
right_ : Right_ {}
right_ =
    { value = "right"
    , right_ = Compatible
    , positionShorthand = Compatible
    , pageBreak = Compatible
    , textAlign = Compatible
    , textAlignLast = Compatible
    , float_ = Compatible
    , clear = Compatible
    }


{-|

[_`backgroundRepeat`_](#backgroundRepeat) — As the allowed space increases in size, the repeated images will stretch (leaving no gaps) until there is room for another one to be added. When the next image is added, all of the current ones compress to allow room. Example: An image with an original width of 260px, repeated three times, might stretch until each repetition is 300px wide, and then another image will be added. They will then compress to 225px.

    backgroundRepeat round

[_`borderImageRepeat`_](#borderImageRepeat) — Keyword indicating that the image must be repeated until it fills the gap between the two borders. If the image doesn't fit after being repeated for an integral number of times, the image is rescaled to fit.

    borderImageRepeat round

-}
round : Round {}
round =
    { value = "round"
    , round = Compatible
    , backgroundRepeat = Compatible
    , backgroundRepeatShorthand = Compatible
    , borderImageRepeat = Compatible
    }


{-|

[_`backgroundAttachment`_](#backgroundAttachment) — This keyword means that the background is fixed with regard to the element itself and does not scroll with its contents. (It is effectively attached to the element's border.)

    backgroundAttachment scroll

[_`overflow`_](#overflow) — The content is clipped and desktop browsers use scrollbars, whether or not any content is clipped. This avoids any problem with scrollbars appearing and disappearing in a dynamic environment. Printers may print overflowing content.

    overflow scroll

-}
scroll : Scroll {}
scroll =
    { value = "scroll"
    , scroll = Compatible
    , backgroundAttachment = Compatible
    , overflow = Compatible
    }


{-|

[_`borderStyle`_](#borderStyle) — Displays a single, straight, solid line.

    borderStyle solid

[_`textDecorationStyle`_](#textDecorationStyle) — Draws a single line.

    textDecorationStyle solid

-}
solid : Solid {}
solid =
    { value = "solid"
    , solid = Compatible
    , borderStyle = Compatible
    , textDecorationStyle = Compatible
    }


{-|

[_`backgroundRepeat`_](#backgroundRepeat) — The image is repeated as much as possible without clipping. The first and last images are pinned to either side of the element, and whitespace is distributed evenly between the images. The background-position property is ignored unless only one image can be displayed without clipping. The only case where clipping happens using space is when there isn't enough room to display one image.

    backgroundRepeat space

[_`borderImageRepeat`_](#borderImageRepeat) — The image is tiled (repeated) to fill the area. If it does not fill the area with a whole number of tiles, the extra space is distributed around the tiles.

    borderImageRepeat space


-}
space : Space {}
space =
    { value = "space"
    , space = Compatible
    , backgroundRepeat = Compatible
    , backgroundRepeatShorthand = Compatible
    , borderImageRepeat = Compatible
    }


{-|

[_`alignContent`_](#alignContent) — Lines are evenly distributed in the flex container. The spacing between each pair of adjacent lines is the same. The first line is flush with the cross-start edge, and the last line is flush with the cross-end edge.

    alignContent spaceBetween

[_`justifyContent`_](#justifyContent) — Flex items are evenly distributed along the line. The spacing between each pair of adjacent items is the same. The first item is flush with the main-start edge, and the last item is flush with the main-end edge.

    justifyContent spaceBetween

-}
spaceBetween : SpaceBetween {}
spaceBetween =
    { value = "space-between"
    , spaceBetween = Compatible
    , alignContent = Compatible
    , justifyContent = Compatible
    }


{-|

[_`alignContent`_](#alignContent) — Lines are evenly distributed in the flex container. The spacing between each pair of adjacent lines is the same. The empty space before the first and after the last line equals half of the space between each pair of adjacent lines.

    alignContent spaceAround

[_`justifyContent`_](#justifyContent) — Flex items are evenly distributed along the line. The spacing between each pair of adjacent items is the same. The empty space before the first and after the last item equals half of the space between each pair of adjacent items.

    justifyContent spaceAround

-}
spaceAround : SpaceAround {}
spaceAround =
    { value = "space-around"
    , spaceAround = Compatible
    , alignContent = Compatible
    , justifyContent = Compatible
    }


{-|

[_`alignContent`_](#alignContent) — Lines are evenly distributed in the flex container. The spacing between each pair of adjacent lines, the main-start edge and the first line, and the main-end edge and the last line, are all exactly the same.

    alignContent spaceEvenly

[_`justifyContent`_](#justifyContent) — Flex items are evenly distributed along the line. The spacing between each pair of adjacent items, the main-start edge and the first item, and the main-end edge and the last item, are all exactly the same.

    justifyContent spaceEvenly

-}
spaceEvenly : SpaceEvenly {}
spaceEvenly =
    { value = "space-evenly"
    , spaceEvenly = Compatible
    , alignContent = Compatible
    , justifyContent = Compatible
    }


{-|

[_`steps`_](#steps) — Denotes a left-continuous function, so that the first step happens when the animation begins.

    steps 15 start

[_`textAlignLast`_](#textAlignLast) — The same as left if direction is left-to-right and right if direction is right-to-left.

    textAlignLast start

-}
start : Start {}
start =
    { value = "start"
    , start = Compatible
    , stepsDirection = Compatible
    , textAlignLast = Compatible
    }


{-|

[_`alignContent`_](#alignContent) — Lines stretch to use the remaining space. The free-space is split equally between all the lines.

    alignContent stretch

[_`alignItems`_](#alignItems) — Flex items are stretched such as the cross-size of the item's margin box is the same as the line while respecting width and height constraints.

    alignItems stretch

[_`borderImageRepeat`_](#borderImageRepeat) — Keyword indicating that the image must be stretched to fill the gap between the two borders.

    borderImageRepeat stretch

-}
stretch : Stretch {}
stretch =
    { value = "stretch"
    , stretch = Compatible
    , alignContent = Compatible
    , alignItems = Compatible
    , borderImageRepeat = Compatible
    }


{-|

[_`position`_](Styled-Types#Position) — Top position

    top_

[_`captionSide`_](#captionSide) — Is a keyword indicating that the caption box should be positioned above the table.

    captionSide top_

[_`verticalAlign`_](#verticalAlign) — Align the top of the element and its descendants with the top of the entire line.

    verticalAlign top_

-}
top_ : Top_ {}
top_ =
    { value = "top"
    , top_ = Compatible
    , positionShorthand = Compatible
    , captionSide = Compatible
    , verticalAlign = Compatible
    }


{-|

[_`backfaceVisibility`_](#backfaceVisibility) — This keyword means that the back face is visible, allowing the front face to be displayed mirrored.

    backfaceVisibility visible

[_`overflow`_](#overflow) — Default value. Content is not clipped, it may be rendered outside the content box.

    overflow visible

[_`visibility`_](#visibility) — Default value, the box is visible.

    visibility visible

-}
visible : Visible {}
visible =
    { value = "visible"
    , visible = Compatible
    , backfaceVisibility = Compatible
    , overflow = Compatible
    , visibility = Compatible
    }



-- Animation Direction Values


{-| The animation plays backward each cycle. Each time the animation cycles, the animation resets to the end state and starts over again. [`reverse`](https://developer.mozilla.org/en-US/docs/Web/CSS/animation-direction#Values)

    animationDirection reverse

-}
reverse : AnimationDirection {}
reverse =
    { value = "reverse"
    , animationDirection = Compatible
    }


{-| The animation should reverse direction each cycle. When playing in reverse, the animation steps are performed backward. In addition, timing functions are also reversed; for example, an ease-in animation is replaced with an ease-out animation when played in reverse. The count to determine if it is an even or an odd iteration starts at one. [`alternate`](https://developer.mozilla.org/en-US/docs/Web/CSS/animation-direction#Values)

    animationDirection alternate

-}
alternate : AnimationDirection {}
alternate =
    { value = "alternate"
    , animationDirection = Compatible
    }


{-| The animation plays backward on the first play-through, then forward on the next, then continues to alternate. The count to determinate if it is an even or an odd iteration starts at one. [`alternate-reverse`](https://developer.mozilla.org/en-US/docs/Web/CSS/animation-direction#Values)

    animationDirection alternateReverse

-}
alternateReverse : AnimationDirection {}
alternateReverse =
    { value = "alternate-reverse"
    , animationDirection = Compatible
    }



-- Animation Fill Mode


{-| The target will retain the computed values set by the last keyframe encountered during execution. The last keyframe encountered depends on the value of [`animationDirection`](#animationDirection) and [`animationIterationCount`](#animationIterationCount). [`forwards`](https://developer.mozilla.org/en-US/docs/Web/CSS/animation-fill-mode#Values)

    animationFillMode forwards

-}
forwards : AnimationFillMode {}
forwards =
    { value = "forwards"
    , animationFillMode = Compatible
    }


{-| The animation will apply the values defined in the first relevant keyframe as soon as it is applied to the target, and retain this during the [`animationDelay`](#animationDelay) period. The first relevant keyframe depends on the value of [`animationDirection`](#animationDirection). [`backwards`](https://developer.mozilla.org/en-US/docs/Web/CSS/animation-fill-mode#Values)

    animationFillMode backwards

-}
backwards : AnimationFillMode {}
backwards =
    { value = "backwards"
    , animationFillMode = Compatible
    }



-- Animation Iteration Count


{-| The animation will repeat forever. [`infinite`](https://developer.mozilla.org/en-US/docs/Web/CSS/animation-iteration-count#Values)

    animationIterationCount infinite

-}
infinite : AnimationIterationCount {}
infinite =
    { value = "infinite"
    , animationIterationCount = Compatible
    }



-- Animation Play State


{-| The animation is currently playing. [`running`](https://developer.mozilla.org/en-US/docs/Web/CSS/animation-play-state#Values)

    animationPlayState running

-}
running : AnimationPlayState {}
running =
    { value = "running"
    , animationPlayState = Compatible
    }


{-| The animation is currently paused. [`paused`](https://developer.mozilla.org/en-US/docs/Web/CSS/animation-play-state#Values)

    animationPlayState paused

-}
paused : AnimationPlayState {}
paused =
    { value = "paused"
    , animationPlayState = Compatible
    }



-- Background Attachment


{-| This keyword means that the background is fixed with regard to the element's contents: if the element has a scrolling mechanism, the background scrolls with the element's contents, and the background painting area and background positioning area are relative to the scrollable area of the element rather than to the border framing them. [`local`](https://developer.mozilla.org/en-US/docs/Web/CSS/background-attachment#Values)

    backgroundAttachment local

-}
local : BackgroundAttachment {}
local =
    { value = "local"
    , backgroundAttachment = Compatible
    }



-- Background Repeat


{-| The image is not repeated (and hence the background image painting area will not necessarily be entirely covered). The position of the non-repeated background image is defined by the background-position CSS property.

    backgroundRepeat noRepeat

-}
noRepeat : BackgroundRepeat (BackgroundRepeatShorthand {})
noRepeat =
    { value = "no-repeat"
    , backgroundRepeat = Compatible
    , backgroundRepeatShorthand = Compatible
    }


{-| Only repeat the image horizontally.

    backgroundRepeat repeatX

-}
repeatX : BackgroundRepeatShorthand {}
repeatX =
    { value = "repeat-x"
    , backgroundRepeatShorthand = Compatible
    }


{-| Only repeat the image vertically.

    backgroundRepeat repeatY

-}
repeatY : BackgroundRepeatShorthand {}
repeatY =
    { value = "repeat-y"
    , backgroundRepeatShorthand = Compatible
    }



-- Background Size


{-| A keyword that scales the image as large as possible and maintains image aspect ratio (image doesn't get squished). Image is letterboxed within the container. When the image and container have different dimensions, the empty areas (either top/bottom of left/right) are filled with the background-color.

    backgroundSize contain

-}
contain : BackgroundSizeShorthand {}
contain =
    { value = "contain"
    , backgroundSizeShorthand = Compatible
    }


{-| A keyword that scales the background image in the corresponding direction such that its intrinsic proportion is maintained.

    backgroundSize auto

-}
cover : BackgroundSizeShorthand {}
cover =
    { value = "cover"
    , backgroundSizeShorthand = Compatible
    }



-- Border Image Slice


{-| Is a keyword whose presence forces the use of the middle image slice to be displayed over the background image, its size and height are resized like those of the top and left image slices, respectively.

    borderImageSlice fill

-}
fill : BorderImageSlice {}
fill =
    { value = "fill"
    , borderImageSlice = Compatible
    }



-- Border Style


{-| Displays a border leading to a carved effect. It is the opposite of ridge.

    borderStyle groove

-}
groove : BorderStyle {}
groove =
    { value = "groove"
    , borderStyle = Compatible
    }


{-| Displays a border with a 3D effect, like if it is coming out of the page. It is the opposite of groove.

    borderStyle ridge

-}
ridge : BorderStyle {}
ridge =
    { value = "ridge"
    , borderStyle = Compatible
    }


{-| Displays a border that makes the box appear embedded. It is the opposite of outset. When applied to a table cell with border-collapse set to collapsed, this value behaves like groove.

    borderStyle inset

-}
inset : BorderStyle {}
inset =
    { value = "inset"
    , borderStyle = Compatible
    }


{-| Displays a border that makes the box appear in 3D, embossed. It is the opposite of inset. When applied to a table cell with border-collapse set to collapsed, this value behaves like ridge.

    borderStyle outset

-}
outset : BorderStyle {}
outset =
    { value = "outset"
    , borderStyle = Compatible
    }



-- Content


{-| Creates an incrementing counter

    content (counter "section_counter")

-}
counter : String -> Content {}
counter name =
    { value = "counter(" ++ name ++ ")"
    , content = Compatible
    }


{-| Returns the value of the element's attribute X as a string. If there is no attribute X, an empty string is returned. The case-sensitivity of attribute names depends on the document language.

    content (attr "title")

-}
attr : String -> Content {}
attr attribute =
    { value = "attr(" ++ attribute ++ ")"
    , content = Compatible
    }


{-| This value is replaced by the appropriate string from the quotes property.

    content openQuote

-}
openQuote : Content {}
openQuote =
    { value = "open-quote"
    , content = Compatible
    }


{-| This value is replaced by the appropriate string from the quotes property.

    content closeQuote

-}
closeQuote : Content {}
closeQuote =
    { value = "close-quote"
    , content = Compatible
    }


{-| Introduces no content, but increments the level of nesting for quotes.

    content noOpenQuote

-}
noOpenQuote : Content {}
noOpenQuote =
    { value = "no-open-quote"
    , content = Compatible
    }


{-| Introduces no content, but decrements the level of nesting for quotes.

    content noCloseQuote

-}
noCloseQuote : Content {}
noCloseQuote =
    { value = "no-close-quote"
    , content = Compatible
    }



-- Flex Direction


{-| The flex container's main-axis is defined to be the same as the text direction. The main-start and main-end points are the same as the content direction.

    flexDirection row

-}
row : FlexDirection {}
row =
    { value = "row"
    , flexDirection = Compatible
    }


{-| Behaves the same as row but the main-start and main-end points are permuted.

    flexDirection rowReverse

-}
rowReverse : FlexDirection {}
rowReverse =
    { value = "row-reverse"
    , flexDirection = Compatible
    }


{-| The flex container's main-axis is the same as the block-axis. The main-start and main-end points are the same as the before and after points of the writing-mode.

    flexDirection column

-}
column : FlexDirection {}
column =
    { value = "column"
    , flexDirection = Compatible
    }


{-| Behaves the same as column but the main-start and main-end are permuted.

    flexDirection columnReverse

-}
columnReverse : FlexDirection {}
columnReverse =
    { value = "column-reverse"
    , flexDirection = Compatible
    }



-- Flex Wrap


{-| The flex items break into multiple lines. The cross-start is either equivalent to start or before depending [`flexDirection`](#flexDirection) value and the cross-end is the opposite of the specified cross-start.

    flexWrap wrap

-}
wrap : FlexWrap {}
wrap =
    { value = "wrap"
    , flexWrap = Compatible
    }


{-| Behaves the same as wrap but cross-start and cross-end are permuted.

    flexWrap wrapReverse

-}
wrapReverse : FlexWrap {}
wrapReverse =
    { value = "wrap-reverse"
    , flexWrap = Compatible
    }



-- Font Family


{-| Glyphs have finishing strokes, flared or tapering ends, or have actual serifed endings.

    fontFamily serif

-}
serif : FontFamily {}
serif =
    { value = "serif"
    , fontFamily = Compatible
    }


{-| Glyphs have stroke endings that are plain.

    fontFamily sansSerif

-}
sansSerif : FontFamily {}
sansSerif =
    { value = "sans-serif"
    , fontFamily = Compatible
    }


{-| All glyphs have the same fixed width.

    fontFamily monospace

-}
monospace : FontFamily {}
monospace =
    { value = "monospace"
    , fontFamily = Compatible
    }



-- Font Stretch


{-| Specifies a font face more condensed than normal, with ultra-condensed as the most condensed.
-}
ultraCondensed : FontStretch {}
ultraCondensed =
    { value = "ultra-condensed"
    , fontStretch = Compatible
    }


{-| Specifies a font face more condensed than normal, with ultra-condensed as the most condensed.
-}
extraCondensed : FontStretch {}
extraCondensed =
    { value = "extra-condensed"
    , fontStretch = Compatible
    }


{-| Specifies a font face more condensed than normal, with ultra-condensed as the most condensed.
-}
condensed : FontStretch {}
condensed =
    { value = "condensed"
    , fontStretch = Compatible
    }


{-| Specifies a font face more condensed than normal, with ultra-condensed as the most condensed.
-}
semiCondensed : FontStretch {}
semiCondensed =
    { value = "semi-condensed"
    , fontStretch = Compatible
    }


{-| Specifies a font face more expanded than normal, with ultra-expanded as the most expanded.
-}
semiExpanded : FontStretch {}
semiExpanded =
    { value = "semi-expanded"
    , fontStretch = Compatible
    }


{-| Specifies a font face more expanded than normal, with ultra-expanded as the most expanded.
-}
expanded : FontStretch {}
expanded =
    { value = "expanded"
    , fontStretch = Compatible
    }


{-| Specifies a font face more expanded than normal, with ultra-expanded as the most expanded.
-}
extraExpanded : FontStretch {}
extraExpanded =
    { value = "extra-expanded"
    , fontStretch = Compatible
    }


{-| Specifies a font face more expanded than normal, with ultra-expanded as the most expanded.
-}
ultraExpanded : FontStretch {}
ultraExpanded =
    { value = "ultra-expanded"
    , fontStretch = Compatible
    }



-- Font Style


{-| Selects a font that is labeled italic, or, if no italic version of the face is available, one labeled oblique is selected instead.

    fontStyle italic

-}
italic : FontStyle {}
italic =
    { value = "italic"
    , fontStyle = Compatible
    }


{-| Selects a font that is labeled oblique, or, if no oblique version of the face is available, one labeled italic is selected instead.

    fontStyle oblique

-}
oblique : FontStyle {}
oblique =
    { value = "oblique"
    , fontStyle = Compatible
    }



-- List Style Position


{-| The marker box is outside the principal block box.

    listStylePosition outside

-}
outside : ListStylePosition {}
outside =
    { value = "outside"
    , listStylePosition = Compatible
    }


{-| The marker box is the first inline box in the principal block box, after which the element's content flows.

    listStylePosition inside

-}
inside : ListStylePosition {}
inside =
    { value = "inside"
    , listStylePosition = Compatible
    }



-- Column Fill


{-| Content is equally divided between columns.

    columnFill balance

-}
balance : ColumnFill {}
balance =
    { value = "balance"
    , columnFill = Compatible
    }



-- Page Break


{-| Always force page breaks after the element.

    pageBreak always

-}
always : PageBreak {}
always =
    { value = "always"
    , pageBreak = Compatible
    }


{-| Avoid page breaks after the element.

    pageBreak avoid
    pageBreakInside avoid

-}
avoid : PageBreakInside (PageBreak {})
avoid =
    { value = "avoid"
    , pageBreak = Compatible
    , pageBreakInside = Compatible
    }



-- Border Collapse


{-| Is a keyword requesting the use of the separated-border table rendering model. It is the default value.

    borderCollapse separate

-}
separate : BorderCollapse {}
separate =
    { value = "separate"
    , borderCollapse = Compatible
    }



-- Empty Cells


{-| Is a keyword indicating that borders and backgrounds should be drawn like in normal cells.

    emptyCells show

-}
show : EmptyCells {}
show =
    { value = "show"
    , emptyCells = Compatible
    }


{-| Is a keyword indicating that no borders or backgrounds should be drawn.

    emptyCells hide

-}
hide : EmptyCells {}
hide =
    { value = "hide"
    , emptyCells = Compatible
    }



-- Direction


{-| The initial value of direction (that is, if not otherwise specified). Text and other elements go from left to right.


    direction ltr

-}
ltr : Direction {}
ltr =
    { value = "ltr"
    , direction = Compatible
    }


{-| Text and other elements go from right to left

    direction rtl

-}
rtl : Direction {}
rtl =
    { value = "rtl"
    , direction = Compatible
    }



-- Text Align


{-| Same as justify, but also forces the last line to be justified.

    textAlign justifyAll

-}
justifyAll : TextAlign {}
justifyAll =
    { value = "justify-all"
    , textAlign = Compatible
    }



-- Text Decoration Line


{-| Each line of text is underlined.

    textDecorationLine underline

-}
underline : TextDecorationLine {}
underline =
    { value = "underline"
    , textDecorationLine = Compatible
    }


{-| Each line of text has a line above it.

    textDecorationLine overline

-}
overline : TextDecorationLine {}
overline =
    { value = "overline"
    , textDecorationLine = Compatible
    }


{-| Each line of text has a line through the middle.

    textDecorationLine lineThrough

-}
lineThrough : TextDecorationLine {}
lineThrough =
    { value = "line-through"
    , textDecorationLine = Compatible
    }



-- Text Decoration Style


{-| Draws a wavy line.

    textDecorationStyle wavy

-}
wavy : TextDecorationStyle {}
wavy =
    { value = "wavy"
    , textDecorationStyle = Compatible
    }



-- Text Overflow


{-| This keyword value indicates to truncate the text at the limit of the content area, therefore the truncation can happen in the middle of a character. To truncate at the transition between two characters, the empty string value ('') must be used. The value clip is the default for this property.

    textOverflow clip

-}
clip : TextOverflow {}
clip =
    { value = "clip"
    , textOverflow = Compatible
    }


{-| This keyword value indicates to display an ellipsis ('…', U+2026 HORIZONTAL ELLIPSIS) to represent clipped text. The ellipsis is displayed inside the content area, decreasing the amount of text displayed. If there is not enough space to display the ellipsis, it is clipped.

    textOverflow ellipsis

-}
ellipsis : TextOverflow {}
ellipsis =
    { value = "ellipsis"
    , textOverflow = Compatible
    }



-- Text Transform


{-| Is a keyword forcing the first letter of each word to be converted to uppercase. Other characters are unchanged; that is, they retain their original case as written in the element's text. A letter is any Unicode character part of the Letter or Number general categories  : it excludes any punctuation marks or symbols at the beginning of the word.

    textTransform capitalize

-}
capitalize : TextTransform {}
capitalize =
    { value = "capitalize"
    , textTransform = Compatible
    }


{-| Is a keyword forcing all characters to be converted to uppercase.

    textTransform uppercase

-}
uppercase : TextTransform {}
uppercase =
    { value = "uppercase"
    , textTransform = Compatible
    }


{-| Is a keyword forcing all characters to be converted to lowercase.

    textTransform lowercase

-}
lowercase : TextTransform {}
lowercase =
    { value = "lowercase"
    , textTransform = Compatible
    }



-- Vertical Align


{-| Aligns the baseline of the element with the subscript-baseline of its parent.

    verticalAlign sub

-}
sub : VerticalAlign {}
sub =
    { value = "sub"
    , verticalAlign = Compatible
    }


{-| Aligns the baseline of the element with the superscript-baseline of its parent.

    verticalAlign super

-}
super : VerticalAlign {}
super =
    { value = "super"
    , verticalAlign = Compatible
    }


{-| Aligns the top of the element with the top of the parent element's font.

    verticalAlign textTop

-}
textTop : VerticalAlign {}
textTop =
    { value = "text-top"
    , verticalAlign = Compatible
    }


{-| Aligns the bottom of the element with the bottom of the parent element's font.

    verticalAlign textBottom

-}
textBottom : VerticalAlign {}
textBottom =
    { value = "text-bottom"
    , verticalAlign = Compatible
    }


{-| Aligns the middle of the element with the baseline plus half the x-height of the parent.

    verticalAlign middle

-}
middle : VerticalAlign {}
middle =
    { value = "middle"
    , verticalAlign = Compatible
    }



-- White Space


{-| Sequences of whitespace are preserved. Lines are only broken at newline characters in the source and at <br> elements.

    whiteSpace pre

-}
pre : WhiteSpace {}
pre =
    { value = "pre"
    , whiteSpace = Compatible
    }


{-| Sequences of whitespace are preserved. Lines are broken at newline characters, at <br>, and as necessary to fill line boxes.

    whiteSpace preWrap

-}
preWrap : WhiteSpace {}
preWrap =
    { value = "pre-wrap"
    , whiteSpace = Compatible
    }


{-| Sequences of whitespace are collapsed. Lines are broken at newline characters, at <br>, and as necessary to fill line boxes.

    whiteSpace preLine

-}
preLine : WhiteSpace {}
preLine =
    { value = "pre-line"
    , whiteSpace = Compatible
    }



-- Word Break


{-| Word breaks may be inserted between any character for non-CJK (Chinese/Japanese/Korean) text.

    wordBreak breakAll

-}
breakAll : WordBreak {}
breakAll =
    { value = "break-all"
    , wordBreak = Compatible
    }


{-| Don't allow word breaks for CJK text.  Non-CJK text behavior is the same as for normal.

    wordBreak keepAll

-}
keepAll : WordBreak {}
keepAll =
    { value = "keep-all"
    , wordBreak = Compatible
    }



-- Overflow Wrap


{-| Indicates that normally unbreakable words may be broken at arbitrary points if there are no otherwise acceptable break points in the line.

    overflowWrap breakWord

-}
breakWord : OverflowWrap {}
breakWord =
    { value = "break-word"
    , overflowWrap = Compatible
    }



-- Transform Style


{-| Indicates that the children of the element should be positioned in the 3D-space.

    transformStyle preserve3d

-}
preserve3d : TransformStyle {}
preserve3d =
    { value = "preserve-3d"
    , transformStyle = Compatible
    }


{-| Indicates that the children of the element are lying in the plane of the element itself.

    transformStyle flat

-}
flat : TransformStyle {}
flat =
    { value = "flat"
    , transformStyle = Compatible
    }



-- Display


{-| The element generates a block element box.

    display block

-}
block : Display {}
block =
    { value = "block"
    , display = Compatible
    }


{-| The element generates one or more inline element boxes.

    display inline

-}
inline : Display {}
inline =
    { value = "inline"
    , display = Compatible
    }


{-| These elements behave like <table> HTML elements. It defines a block-level box.

    display table

-}
table : Display {}
table =
    { value = "table"
    , display = Compatible
    }


{-| The element behaves like a block element and lays out its content according to the flexbox model.

    display flex_

-}
flex_ : Display {}
flex_ =
    { value = "flex"
    , display = Compatible
    }


{-| The element generates a block box for the content and a separate list-item inline box.

    display listItem

-}
listItem : Display {}
listItem =
    { value = "list-item"
    , display = Compatible
    }


{-| These elements behave like <tbody> HTML elements

    display tableRowGroup

-}
tableRowGroup : Display {}
tableRowGroup =
    { value = "table-row-group"
    , display = Compatible
    }


{-| These elements behave like <thead> HTML elements.

    display tableHeaderGroup

-}
tableHeaderGroup : Display {}
tableHeaderGroup =
    { value = "table-header-group"
    , display = Compatible
    }


{-| These elements behave like <tfoot> HTML elements.

    display tableFooterGroup

-}
tableFooterGroup : Display {}
tableFooterGroup =
    { value = "table-footer-group"
    , display = Compatible
    }


{-| These elements behave like <tr> HTML elements.

    display tableRow

-}
tableRow : Display {}
tableRow =
    { value = "table-row"
    , display = Compatible
    }


{-| These elements behave like <td> HTML elements.

    display tableCell

-}
tableCell : Display {}
tableCell =
    { value = "table-cell"
    , display = Compatible
    }


{-| These elements behave like <colgroup> HTML elements.

    display tableColumnGroup

-}
tableColumnGroup : Display {}
tableColumnGroup =
    { value = "table-column-group"
    , display = Compatible
    }


{-| These elements behave like <col> HTML elements.

    display tableColumn

-}
tableColumn : Display {}
tableColumn =
    { value = "table-column"
    , display = Compatible
    }


{-| These elements behave like <caption> HTML elements.

    display tableCaption

-}
tableCaption : Display {}
tableCaption =
    { value = "table-caption"
    , display = Compatible
    }


{-| The element generates a block element box that will be flowed with surrounding content as if it were a single inline box (behaving much like a replaced element would)

    display inlineBlock

-}
inlineBlock : Display {}
inlineBlock =
    { value = "inline-block"
    , display = Compatible
    }


{-| This value makes the element a list item, with the effects described above. Additionally, the outside value of list-style-position computes to inside on this element. Otherwise, this display value is treated identically to inline.

    display inlineListItem

-}
inlineListItem : Display {}
inlineListItem =
    { value = "inline-list-item"
    , display = Compatible
    }


{-| The inline-table value does not have a direct mapping in HTML. It behaves like a <table> HTML element, but as an inline box, rather than a block-level box. Inside the table box is a block-level context.

    display inlineTable

-}
inlineTable : Display {}
inlineTable =
    { value = "inline-table"
    , display = Compatible
    }


{-| The element behaves like an inline element and lays out its content according to the flexbox model.

    display inlineFlex

-}
inlineFlex : Display {}
inlineFlex =
    { value = "inline-flex"
    , display = Compatible
    }



-- Position


{-| This keyword lets the element use the normal behavior. That is, it is laid out in its current position in the flow.  The top, right, bottom, left and z-index properties do not apply.

    position static

-}
static : Position_ {}
static =
    { value = "static"
    , position_ = Compatible
    }


{-| This keyword lays out all elements as though the element were not positioned, and then adjusts the element's position, without changing layout (and thus leaving a gap for the element where it would have been had it not been positioned). The effect of position:relative on table-*-group, table-row, table-column, table-cell, and table-caption elements is undefined.

    position relative

-}
relative : Position_ {}
relative =
    { value = "relative"
    , position_ = Compatible
    }


{-| Do not leave space for the element. Instead, position it at a specified position relative to its closest positioned ancestor if any, or otherwise relative to the initial containing block. Absolutely positioned boxes can have margins, and they do not collapse with any other margins.

    position absolute

-}
absolute : Position_ {}
absolute =
    { value = "absolute"
    , position_ = Compatible
    }


{-| The box position is calculated according to the normal flow (this is called the position in normal flow). Then the box is offset relative to its flow root and containing block and in all cases, including table elements, does not affect the position of any following boxes. When a box B is stickily positioned, the position of the following box is calculated as though B were not offset. The effect of ‘position: sticky’ on table related elements is the same as for ‘position: relative’.

    position sticky

-}
sticky : Position_ {}
sticky =
    { value = "sticky"
    , position_ = Compatible
    }



-- Resize


{-| The element displays a mechanism for allowing the user to resize the element, which may only be resized horizontally.

    resize horizontal

-}
horizontal : Resize {}
horizontal =
    { value = "horizontal"
    , resize = Compatible
    }


{-| The element displays a mechanism for allowing the user to resize the element, which may only be resized vertically.

    resize vertical

-}
vertical : Resize {}
vertical =
    { value = "vertical"
    , resize = Compatible
    }
