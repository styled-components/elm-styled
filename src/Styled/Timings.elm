module Styled.Timings
    exposing
        ( linear
        , ease
        , easeIn
        , easeOut
        , easeInOut
        , stepStart
        , stepEnd
        , steps
        , cubicBezier
        )

{-|

# Timing Function
@docs linear, ease, easeIn, easeOut, easeInOut, stepStart, stepEnd, steps, cubicBezier

-}

import Styled.Types exposing (..)


createTimingFunction : String -> TimingFunction {}
createTimingFunction value =
    { value = value
    , timingFunction = Compatible
    }


{-| This keyword represents the timing function `cubicBezier 0 0 1 1`. Using this timing function, the animation goes from its initial state to its final one regularly, with a constant velocity. [`linear`](https://developer.mozilla.org/en-US/docs/Web/CSS/single-transition-timing-function#linear)

    linear

-}
linear : TimingFunction {}
linear =
    createTimingFunction "linear"


{-| This keyword represents the timing function `cubicBezier 0.25 0.1 0.25 1`. This function is similar to ease-in-out, though it accelerates more sharply at the beginning, starts to slow down before the time is halfway through, and gently comes to rest. [`ease`](https://developer.mozilla.org/en-US/docs/Web/CSS/single-transition-timing-function#ease)

    ease

-}
ease : TimingFunction {}
ease =
    createTimingFunction "ease"


{-| This keyword represents the timing function `cubicBezier 0.42 0 1 1`. The animation begins slowly, then progressively accelerates until the final state is reached and the animation stops abruptly. [`ease-in`](https://developer.mozilla.org/en-US/docs/Web/CSS/single-transition-timing-function#ease-in)

    easeIn

-}
easeIn : TimingFunction {}
easeIn =
    createTimingFunction "ease-in"


{-| This keyword represents the timing function `cubicBezier 0 0 0.58 1`. The animation starts quickly and then slows down when approaching to its final state. [`ease-out`](https://developer.mozilla.org/en-US/docs/Web/CSS/single-transition-timing-function#ease-out)

    easeOut

-}
easeOut : TimingFunction {}
easeOut =
    createTimingFunction "ease-out"


{-| This keyword represents the timing function `cubicBezier 0.42 0 0.58 1`. With this timing function, the animation starts slowly, accelerates faster, and then slows down when approaching its final state. At the beginning, it behaves similarly to the easeIn function; at the end, it is similar to the easeOut function. [`ease-in-out`](https://developer.mozilla.org/en-US/docs/Web/CSS/single-transition-timing-function#ease-in-out)

    easeInOut

-}
easeInOut : TimingFunction {}
easeInOut =
    createTimingFunction "ease-in-out"


{-| This keyword represents the timing function `steps 1 start`. Using this timing function, the animation jumps immediately to the end state and stays in that position until the end of the animation. [`step-start`](https://developer.mozilla.org/en-US/docs/Web/CSS/single-transition-timing-function#step-start)

    stepStart

-}
stepStart : TimingFunction {}
stepStart =
    createTimingFunction "step-start"


{-| This keyword represents the timing function `steps 1 end`. Using this timing function, the animation stays in its initial state until the end, where it directly jumps to its final position. [`step-end`](https://developer.mozilla.org/en-US/docs/Web/CSS/single-transition-timing-function#step-end)

    stepEnd

-}
stepEnd : TimingFunction {}
stepEnd =
    createTimingFunction "step-end"


{-| The steps functional notation defines a step function dividing the domain of output values in equidistant steps. [`steps`](https://developer.mozilla.org/en-US/docs/Web/CSS/single-transition-timing-function#The_steps%28%29_class_of_timing-functions)

    steps 15 end

-}
steps : Int -> StepsDirection compatible -> TimingFunction {}
steps numberOfSteps direction =
    let
        value =
            "steps("
                ++ (toString numberOfSteps)
                ++ ", "
                ++ direction.value
                ++ ")"
    in
        createTimingFunction value


{-| The cubicBezier functional notation defines a cubic Bézier curve. As these curves are continuous, they are often used to smooth down the start and end of the animation and are therefore sometimes called easing functions. [`cubic-bezier`](https://developer.mozilla.org/en-US/docs/Web/CSS/single-transition-timing-function#The_cubic-bezier%28%29_class_of_timing-functions)

    cubicBezier 0 0 1 1

-}
cubicBezier : number -> number -> number -> number -> TimingFunction {}
cubicBezier x1 y1 x2 y2 =
    let
        coordinates =
            [ x1, y1, x2, y2 ]
                |> List.map toString
                |> String.join ", "
    in
        createTimingFunction ("cubic-bezier(" ++ coordinates ++ ")")
