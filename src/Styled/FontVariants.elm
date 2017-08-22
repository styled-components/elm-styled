module Styled.FontVariants exposing (..)

{-|

# Font Variant Alternates
@docs historicalForms, stylistic, styleset, characterVariant, swash, ornaments, annotation

# Font Variant Caps
@docs smallCaps, allSmallCaps, petiteCaps, allPetiteCaps, unicase, titlingCaps

# Font Variant East Asian
@docs ruby, jis78, jis83, jis90, jis04, simplified, traditional, proportionalWidth, fullWidth

# Font Variant Ligatures
@docs commonLigatures, noCommonLigatures, discretionaryLigatures, noDiscretionaryLigatures, historicalLigatures, noHistoricalLigatures, contextual, noContextual

# Font Variant Numeric
@docs ordinal, slashedZero, liningNums, oldstyleNums, proportionalNums, tabularNums, diagonalFractions, stackedFractions

-}

import Styled.Types exposing (..)


-- Font Variant Alternates


{-| This keyword enables the display of historical forms, that is glyphs that were common in the past but no more today. It corresponds to the OpentType value hist.

    fontVariantAlternates historicalForms

-}
historicalForms : FontVariantAlternates {}
historicalForms =
    { value = "historical-forms"
    , fontVariantAlternates = Compatible
    }


{-| This function enables the display of a stylistic alternates. The parameter is a font-specific names mapped to a number. It corresponds to the OpenType value salt like salt 2.

    fontVariantAlternates (stylistic <user-defined-ident>)

-}
stylistic : String -> FontVariantAlternates {}
stylistic name =
    { value = "stylistic(" ++ name ++ ")"
    , fontVariantAlternates = Compatible
    }


{-| This function enables the usage of a set of stylistic alternatives for characters. The parameter is a font-specific names mapped to a number. It corresponds to the OpenType value ssXY like ss02.

    fontVariantAlternates (styleset <user-defined-ident>)

-}
styleset : String -> FontVariantAlternates {}
styleset name =
    { value = "styleset(" ++ name ++ ")"
    , fontVariantAlternates = Compatible
    }


{-| This function enables the usage of a set of stylistic alternatives for characters. It is very similar to styleset() though the variant here doesn't create coherent glyphs for a set of characters; individual characters will have independant and not necessary coherent styles. The parameter is a font-specific names mapped to a number. It corresponds to the OpenType value cvXY like cv02.

    fontVariantAlternates (characterVariant <user-defined-ident>)

-}
characterVariant : String -> FontVariantAlternates {}
characterVariant name =
    { value = "character-variant(" ++ name ++ ")"
    , fontVariantAlternates = Compatible
    }


{-| This function enables the display of swash glyphs. The parameter is a font-specific names mapped to a number. It corresponds to the OpenType value swsh and cswh like swsh 2 and cswh 2.

    fontVariantAlternates (swash <user-defined-ident>)

-}
swash : String -> FontVariantAlternates {}
swash name =
    { value = "swash(" ++ name ++ ")"
    , fontVariantAlternates = Compatible
    }


{-| This function enables the display of ornaments, that are fleurons and other dingbats-like glyphs. The parameter is a font-specific names mapped to a number. It corresponds to the OpenType value ornm like ornm 2.

    fontVariantAlternates (ornaments <user-defined-ident>)

-}
ornaments : String -> FontVariantAlternates {}
ornaments name =
    { value = "ornaments(" ++ name ++ ")"
    , fontVariantAlternates = Compatible
    }


{-| This function enables the display of annotations, like circled digits or inverterd characters. The parameter is a font-specific names mapped to a number. It corresponds to the OpenType value nalt like nalt 2.

    fontVariantAlternates (annotation <user-defined-ident>)

-}
annotation : String -> FontVariantAlternates {}
annotation name =
    { value = "annotation(" ++ name ++ ")"
    , fontVariantAlternates = Compatible
    }



-- Font Variant Caps


{-| This keyword forces the use of small capitals letters for lower case characters. It corresponds to the OpenType value smcp; if the font doesn't support them, it synthesizes the glyphs.

    fontVariantCaps smallCaps

-}
smallCaps : FontVariantCaps {}
smallCaps =
    { value = "small-caps"
    , fontVariantCaps = Compatible
    }


{-| This keyword forces the use of small capital letters for lower case characters. It corresponds to the OpenType values smcp and c2sc; if the font doesn't support them, it synthesizes the glyphs.

    fontVariantCaps allSmallCaps

-}
allSmallCaps : FontVariantCaps {}
allSmallCaps =
    { value = "all-small-caps"
    , fontVariantCaps = Compatible
    }


{-| This keyword forces the use of petite capital letters for lower case characters. It corresponds to the OpenType value pcap; if the font doesn't support them, small caps glyphs are used instead.

    fontVariantCaps petiteCaps

-}
petiteCaps : FontVariantCaps {}
petiteCaps =
    { value = "petite-caps"
    , fontVariantCaps = Compatible
    }


{-| This keyword forces the use of petite capital letters for lower case characters. It corresponds to the OpenType values pcap and c2pc; if the font doesn't support them, small caps glyphs are used instead.

    fontVariantCaps allPetiteCaps

-}
allPetiteCaps : FontVariantCaps {}
allPetiteCaps =
    { value = "all-petite-caps"
    , fontVariantCaps = Compatible
    }


{-| This keyword forces the use of small capital letters for upper case characters. It corresponds to the OpenType value unic; if the font doesn't support them, small caps glyphs are used for the upper case characters instead.

    fontVariantCaps unicase

-}
unicase : FontVariantCaps {}
unicase =
    { value = "unicase"
    , fontVariantCaps = Compatible
    }


{-| This keyword forces the use of special capitals for titling, for both lower and uppercase letters. Regular uppercase glyphs are usually designed to be rendered with lowercase glyphs: they tend to appear too bold when a long run of text use such glyphs. The special glyphs used here are designed not to produce this effect. This keyword corresponds to the OpenType value titl; if the font doesn't support it, the keyword has no visible action.

    fontVariantCaps titlingCaps

-}
titlingCaps : FontVariantCaps {}
titlingCaps =
    { value = "titling-caps"
    , fontVariantCaps = Compatible
    }



-- Font Variant East Asian


{-| This keyword forces the use of special glyphs for ruby characters. As these are usually smaller, font creators often designs specific forms, usually slightly bolder to improve the contrast. This keyword corresponds to the OpenType values ruby.

    fontVariantEastAsian ruby

-}
ruby : FontVariantEastAsian {}
ruby =
    { value = "ruby"
    , fontVariantEastAsian = Compatible
    }


{-| This value activates the figures defined in specific standard. OpenType equivalent: jp78

    fontVariantEastAsian jis78

-}
jis78 : FontVariantEastAsian {}
jis78 =
    { value = "jis78"
    , fontVariantEastAsian = Compatible
    }


{-| This value activates the figures defined in specific standard. OpenType equivalent: jp83

    fontVariantEastAsian jis83

-}
jis83 : FontVariantEastAsian {}
jis83 =
    { value = "jis83"
    , fontVariantEastAsian = Compatible
    }


{-| This value activates the figures defined in specific standard. OpenType equivalent: jp90

    fontVariantEastAsian jis90

-}
jis90 : FontVariantEastAsian {}
jis90 =
    { value = "jis90"
    , fontVariantEastAsian = Compatible
    }


{-| This value activates the figures defined in specific standard. OpenType equivalent: jp04

    fontVariantEastAsian jis04

-}
jis04 : FontVariantEastAsian {}
jis04 =
    { value = "jis04"
    , fontVariantEastAsian = Compatible
    }


{-| This value activates the figures defined in specific standard. OpenType equivalent: smpl

    fontVariantEastAsian simplified

-}
simplified : FontVariantEastAsian {}
simplified =
    { value = "simplified"
    , fontVariantEastAsian = Compatible
    }


{-| This value activates the figures defined in specific standard. OpenType equivalent: trad

    fontVariantEastAsian traditional

-}
traditional : FontVariantEastAsian {}
traditional =
    { value = "traditional"
    , fontVariantEastAsian = Compatible
    }


{-| This value activates the set of figures where numbers are not all of the same size. It corresponds to the OpenType values pwid.

    fontVariantEastAsian proportionalWidth

-}
proportionalWidth : FontVariantEastAsian {}
proportionalWidth =
    { value = "proportional-width"
    , fontVariantEastAsian = Compatible
    }


{-| This value activates the set of figures where numbers are all of the same size, all wing them to be easily aligned like in tables. It corresponds to the OpenType
    fontVariantEastAsian fullWidth
values fwid.

-}
fullWidth : FontVariantEastAsian {}
fullWidth =
    { value = "full-width"
    , fontVariantEastAsian = Compatible
    }



-- Font Variant Ligatures


{-| This value activates the most common ligatures, like for fi, ffi, th or similar. They correspond to the OpenType values liga and clig. Note that the keyword normal activates these ligatures.

    fontVariantLigatures commonLigatures

-}
commonLigatures : FontVariantLigatures {}
commonLigatures =
    { value = "common-ligatures"
    , fontVariantLigatures = Compatible
    }


{-| This value deactivates the most common ligatures, like for fi, ffi, th or similar. They correspond to the OpenType values liga and clig. Note that the keyword normal activates these ligatures.

    fontVariantLigatures noCommonLigatures

-}
noCommonLigatures : FontVariantLigatures {}
noCommonLigatures =
    { value = "no-common-ligatures"
    , fontVariantLigatures = Compatible
    }


{-| This value activates specific ligatures, specific to the font and defined by the type designer. They correspond to the OpenType values dlig. Note that the keyword normal usually deactivates these ligatures.

    fontVariantLigatures discretionaryLigatures

-}
discretionaryLigatures : FontVariantLigatures {}
discretionaryLigatures =
    { value = "discretionary-ligatures"
    , fontVariantLigatures = Compatible
    }


{-| This value deactivates specific ligatures, specific to the font and defined by the type designer. They correspond to the OpenType values dlig. Note that the keyword normal usually deactivates these ligatures.

    fontVariantLigatures noDiscretionaryLigatures

-}
noDiscretionaryLigatures : FontVariantLigatures {}
noDiscretionaryLigatures =
    { value = "no-discretionary-ligatures"
    , fontVariantLigatures = Compatible
    }


{-| This value activates the ligatures used historically, in old books, like the German tz digraph being displayed ß. They correspond to the OpenType values hlig. Note that the keyword normal usually deactivates these ligatures.

    fontVariantLigatures historicalLigatures

-}
historicalLigatures : FontVariantLigatures {}
historicalLigatures =
    { value = "historical-ligatures"
    , fontVariantLigatures = Compatible
    }


{-| This value deactivates the ligatures used historically, in old books, like the German tz digraph being displayed ß. They correspond to the OpenType values hlig. Note that the keyword normal usually deactivates these ligatures.

    fontVariantLigatures noHistoricalLigatures

-}
noHistoricalLigatures : FontVariantLigatures {}
noHistoricalLigatures =
    { value = "no-historical-ligatures"
    , fontVariantLigatures = Compatible
    }


{-| This value activates whether letters adapt to their context—that is, whether they adapt to the surrounding letters. This value correspond to the OpenType values calt. Note that the keyword normal usually activates these ligatures too.

    fontVariantLigatures contextual

-}
contextual : FontVariantLigatures {}
contextual =
    { value = "contextual"
    , fontVariantLigatures = Compatible
    }


{-| This value deactivates whether letters adapt to their context—that is, whether they adapt to the surrounding letters. This value correspond to the OpenType values calt. Note that the keyword normal usually activates these ligatures too.

    fontVariantLigatures noContextual

-}
noContextual : FontVariantLigatures {}
noContextual =
    { value = "no-contextual"
    , fontVariantLigatures = Compatible
    }



-- Font Variant Numeric


{-| This keyword forces the use of special glyphs for the ordinal markers, like 1st, 2nd, 3rd, 4th in English or a 1a in Italian. It corresponds to the OpenType values ordn.

    fontVariantNumeric ordinal

-}
ordinal : FontVariantNumeric {}
ordinal =
    { value = "ordinal"
    , fontVariantNumeric = Compatible
    }


{-| This keyword forces the use of a 0 with a slash; this is useful when a clear distinction between O and 0 is needed. It corresponds to the OpenType values zero.

    fontVariantNumeric slashedZero

-}
slashedZero : FontVariantNumeric {}
slashedZero =
    { value = "slashed-zero"
    , fontVariantNumeric = Compatible
    }


{-| This value activates the set of figures where numbers are all lying on the baseline. It corresponds to the OpenType values lnum.

    fontVariantNumeric liningNums

-}
liningNums : FontVariantNumeric {}
liningNums =
    { value = "lining-nums"
    , fontVariantNumeric = Compatible
    }


{-| This value activates the set of figures where some numbers, like 3, 4, 7, 9 have descenders. It corresponds to the OpenType values onum.

    fontVariantNumeric oldstyleNums

-}
oldstyleNums : FontVariantNumeric {}
oldstyleNums =
    { value = "oldstyle-nums"
    , fontVariantNumeric = Compatible
    }


{-| This value activates the set of figures where numbers are not all of the same size. It corresponds to the OpenType values pnum.

    fontVariantNumeric proportionalNums

-}
proportionalNums : FontVariantNumeric {}
proportionalNums =
    { value = "proportional-nums"
    , fontVariantNumeric = Compatible
    }


{-| This value activates the set of figures where numbers are all of the same size, allowing them to be easily aligned like in tables. It corresponds to the OpenType values tnum.

    fontVariantNumeric tabularNums

-}
tabularNums : FontVariantNumeric {}
tabularNums =
    { value = "tabular-nums"
    , fontVariantNumeric = Compatible
    }


{-| This value activates the set of figures where the numerator and denominator are made smaller and separated by a slash. It corresponds to the OpenType values frac.

    fontVariantNumeric diagonalFractions

-}
diagonalFractions : FontVariantNumeric {}
diagonalFractions =
    { value = "diagonal-fractions"
    , fontVariantNumeric = Compatible
    }


{-| This value activates the set of figures where the numerator and denominator are made smaller, stacked and separated by a horizontal line. It corresponds to the OpenType values afrc.

    fontVariantNumeric stackedFractions

-}
stackedFractions : FontVariantNumeric {}
stackedFractions =
    { value = "stacked-fractions"
    , fontVariantNumeric = Compatible
    }
