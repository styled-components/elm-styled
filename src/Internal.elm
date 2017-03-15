module Internal exposing (..)

import Native.Css
import Murmur3 exposing (hashString)
import Styled.Types exposing (..)
import Json.Encode as Json


injectCss : String -> List String -> Bool
injectCss scope rules =
    let
        injectedCss =
            rules
                |> List.map Json.string
                |> Json.list
                |> Native.Css.inject scope
    in
        True


isDeclaration : Rule -> Bool
isDeclaration rule =
    case rule of
        Declaration _ _ _ ->
            True

        _ ->
            False


createHash : String -> a -> String
createHash prefix hashable =
    toString hashable
        |> hashString 571130
        |> toString
        |> String.append (prefix ++ "-")


concatDeclaration : Rule -> String
concatDeclaration rule =
    case rule of
        Declaration property values important ->
            if important then
                property ++ ": " ++ (String.join " " values) ++ " !important;"
            else
                property ++ ": " ++ (String.join " " values) ++ ";"

        _ ->
            ""


concatOtherRule : String -> Rule -> String
concatOtherRule parentSelector rule =
    case rule of
        Declaration _ _ _ ->
            ""

        Selector selector rules ->
            createCss (parentSelector ++ selector) rules
                |> String.join " "


createCss : String -> List Rule -> List String
createCss selector rules =
    let
        ( declarations, otherRules ) =
            List.partition isDeclaration rules

        declarationsCss =
            List.map concatDeclaration declarations
                |> String.join "  "
                |> (\css ->
                        selector
                            ++ " { "
                            ++ css
                            ++ " } "
                   )

        otherRulesCss =
            List.map (concatOtherRule selector) otherRules
    in
        declarationsCss :: otherRulesCss
