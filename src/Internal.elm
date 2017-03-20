module Internal exposing (..)

import Murmur3 exposing (hashString)
import Styled.Types exposing (..)


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


concatOtherRule : String -> Rule -> List String
concatOtherRule parentSelector rule =
    case rule of
        Declaration _ _ _ ->
            List.singleton ""

        Selector selector rules ->
            createCss (parentSelector ++ selector) rules
                |> String.join " "
                |> List.singleton

        Media query rules ->
            createCss (parentSelector) rules
                |> String.join " "
                |> (\css ->
                        "@media "
                            ++ query
                            ++ " { "
                            ++ css
                            ++ " } "
                   )
                |> List.singleton

        Mixin rules ->
            createCss parentSelector rules


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
            List.concatMap (concatOtherRule selector) otherRules
    in
        declarationsCss :: otherRulesCss
