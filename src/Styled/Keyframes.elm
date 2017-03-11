module Styled.Keyframes
    exposing
        ( keyframes
        )


keyframes : String -> Keyframes {}
keyframes name =
    { value = name
    , keyframes = Compatible
    }
