module Main exposing (..)

{-| -}

import Debug.Watch as Debug
import Html exposing (text)


addOne : number -> number
addOne x =
    x + 1


multiply x y =
    x * y


multiplyAndAdd x y z =
    (x * y) + z


main =
    let
        _ =
            Debug.watch "add one" addOne 5

        _ =
            Debug.watch "" addOne 5

        _ =
            Debug.watch2 "multiply" multiply 5 8

        _ =
            Debug.watch3 "multiply and add" multiplyAndAdd 5 8 10
    in
    text "Hello!  Check the console for output!"
