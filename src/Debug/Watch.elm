module Debug.Watch exposing (watch, watch2, watch3)

{-| Log the input and output of a function to the console.

@docs watch, watch2, watch3

-}


{-| You can use it by putting it in front of a function you’re trying to debug.

    import Debug.Watch as Debug

    addOne x =
        x + 1

    x =
        Debug.watch "add one" addOne 5

results in a console log of

    add one
        input: 5
       output: 6

-}
watch : String -> (a -> b) -> a -> b
watch tag fn a =
    let
        _ =
            Debug.log (tag ++ "\n    input") a
    in
    Debug.log "   output" (fn a)


{-| Same as `watch, but for a function with 2 arguments.
-}
watch2 : String -> (a -> b -> c) -> a -> b -> c
watch2 tag fn a b =
    let
        _ =
            Debug.log "        &" b

        _ =
            Debug.log (tag ++ "\n    input") a
    in
    Debug.log "   output" (fn a b)


{-| -}
watch3 : String -> (a -> b -> c -> d) -> a -> b -> c -> d
watch3 tag fn a b c =
    let
        _ =
            Debug.log "        &" c

        _ =
            Debug.log "        &" b

        _ =
            Debug.log (tag ++ "\n    input") a
    in
    Debug.log "   output" (fn a b c)
