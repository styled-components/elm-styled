module Styled.ListStyles exposing (..)

{-|

# List Style Type
@docs disc, armenian, circle, cjkIdeographic, decimal, decimalLeadingZero, georgian, hebrew, hiragana, hiraganaIroha, katakana, katakanaIroha, lowerAlpha, lowerGreek, lowerLatin, lowerRoman, square, upperAlpha, upperGreek, upperLatin, upperRoman

-}

import Styled.Types exposing (..)


{-| Default value. The marker is a filled circle.

    listStyleType disc

-}
disc : ListStyleType {}
disc =
    { value = "disc"
    , listStyleType = Compatible
    }


{-| The marker is traditional Armenian numbering.

    listStyleType armenian

-}
armenian : ListStyleType {}
armenian =
    { value = "armenian"
    , listStyleType = Compatible
    }


{-| The marker is a circle.

    listStyleType circle

-}
circle : ListStyleType {}
circle =
    { value = "circle"
    , listStyleType = Compatible
    }


{-| The marker is plain ideographic numbers.

    listStyleType cjkIdeographic

-}
cjkIdeographic : ListStyleType {}
cjkIdeographic =
    { value = "cjk-ideographic"
    , listStyleType = Compatible
    }


{-| The marker is a number.

    listStyleType decimal

-}
decimal : ListStyleType {}
decimal =
    { value = "decimal"
    , listStyleType = Compatible
    }


{-| The marker is a number with leading zeros (01, 02, 03, etc.)

    listStyleType decimalLeadingZero

-}
decimalLeadingZero : ListStyleType {}
decimalLeadingZero =
    { value = "decimal-leading-zero"
    , listStyleType = Compatible
    }


{-| The marker is traditional Georgian numbering.

    listStyleType georgian

-}
georgian : ListStyleType {}
georgian =
    { value = "georgian"
    , listStyleType = Compatible
    }


{-| The marker is traditional Hebrew numbering.

    listStyleType hebrew

-}
hebrew : ListStyleType {}
hebrew =
    { value = "hebrew"
    , listStyleType = Compatible
    }


{-| The marker is traditional Hiragana numbering.

    listStyleType hiragana

-}
hiragana : ListStyleType {}
hiragana =
    { value = "hiragana"
    , listStyleType = Compatible
    }


{-| The marker is traditional Hiragana iroha numbering.

    listStyleType hiraganaIroha

-}
hiraganaIroha : ListStyleType {}
hiraganaIroha =
    { value = "hiragana-iroha"
    , listStyleType = Compatible
    }


{-| The marker is traditional Katakana numbering.

    listStyleType katakana

-}
katakana : ListStyleType {}
katakana =
    { value = "katakana"
    , listStyleType = Compatible
    }


{-| The marker is traditional Katakana iroha numbering.

    listStyleType katakanaIroha

-}
katakanaIroha : ListStyleType {}
katakanaIroha =
    { value = "katakana-iroha"
    , listStyleType = Compatible
    }


{-| The marker is lower-alpha (a, b, c, d, e, etc.)

    listStyleType lowerAlpha

-}
lowerAlpha : ListStyleType {}
lowerAlpha =
    { value = "lower-alpha"
    , listStyleType = Compatible
    }


{-| The marker is lower-greek.

    listStyleType lowerGreek

-}
lowerGreek : ListStyleType {}
lowerGreek =
    { value = "lower-greek"
    , listStyleType = Compatible
    }


{-| The marker is lower-latin (a, b, c, d, e, etc.)

    listStyleType lowerLatin

-}
lowerLatin : ListStyleType {}
lowerLatin =
    { value = "lower-latin"
    , listStyleType = Compatible
    }


{-| The marker is lower-roman (i, ii, iii, iv, v, etc.)

    listStyleType lowerRoman

-}
lowerRoman : ListStyleType {}
lowerRoman =
    { value = "lower-roman"
    , listStyleType = Compatible
    }


{-| The marker is a square.

    listStyleType square

-}
square : ListStyleType {}
square =
    { value = "square"
    , listStyleType = Compatible
    }


{-| The marker is upper-alpha (A, B, C, D, E, etc.)

    listStyleType upperAlpha

-}
upperAlpha : ListStyleType {}
upperAlpha =
    { value = "upper-alpha"
    , listStyleType = Compatible
    }


{-| The marker is upper-greek.

    listStyleType upperGreek

-}
upperGreek : ListStyleType {}
upperGreek =
    { value = "upper-greek"
    , listStyleType = Compatible
    }


{-| The marker is upper-latin (A, B, C, D, E, etc.)

    listStyleType upperLatin

-}
upperLatin : ListStyleType {}
upperLatin =
    { value = "upper-latin"
    , listStyleType = Compatible
    }


{-| The marker is upper-roman (I, II, III, IV, V, etc.)

    listStyleType upperRoman

-}
upperRoman : ListStyleType {}
upperRoman =
    { value = "upper-roman"
    , listStyleType = Compatible
    }
