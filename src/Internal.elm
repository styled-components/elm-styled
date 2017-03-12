module Internal exposing (createHash, concatDeclaration)

import Murmur3 exposing (hashString)
import Styled.Types exposing (..)


createHash : a -> String
createHash =
    toString
        >> hashString 571130
        >> toString
        >> String.append "s"


concatDeclaration : Rule -> String
concatDeclaration rule =
    case rule of
        Declaration property values ->
            property ++ ": " ++ (String.join " " values) ++ ";"

        ImportantDeclaration property values ->
            property ++ ": " ++ (String.join " " values) ++ " !important;"
