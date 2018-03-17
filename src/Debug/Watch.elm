module Debug.Watch exposing (watch, watch2, watch3, watch4, watch5)

{-| Log the input and output of a function to the console.

@docs watch, watch2, watch3, watch4, watch5

-}


formatTag : String -> ( String, String )
formatTag tag =
    ( if String.length tag < 2 then
        "fn "
      else
        tag ++ " "
    , String.repeat (String.length tag - 2) " " ++ "-> "
    )


{-| You can use it by putting it in front of a function you’re trying to debug.

    import Debug.Watch as Debug

    addOne x =
        x + 1

    x =
        Debug.watch "add one" addOne 5

results in a console log of

    add one : 5
         -> : 6

-}
watch : String -> (a -> b) -> a -> b
watch tag fn a =
    let
        ( normalizedTag, indent ) =
            formatTag tag

        _ =
            Debug.log normalizedTag a
    in
    Debug.log indent (fn a)


{-| Same as `watch, but for a function with 2 arguments.

    multiply x y =
        x * y

    x =
        Debug.watch2 "multiply" multiply 5 5

results in

    multiply : 5
          -> : 5
          -> : 25

-}
watch2 : String -> (a -> b -> c) -> a -> b -> c
watch2 tag fn a b =
    let
        ( normalizedTag, indent ) =
            formatTag tag

        _ =
            Debug.log normalizedTag a

        _ =
            Debug.log indent b
    in
    Debug.log indent (fn a b)


{-| -}
watch3 : String -> (a -> b -> c -> d) -> a -> b -> c -> d
watch3 tag fn a b c =
    let
        ( normalizedTag, indent ) =
            formatTag tag

        _ =
            Debug.log normalizedTag a

        _ =
            Debug.log indent b

        _ =
            Debug.log indent c
    in
    Debug.log indent (fn a b c)


{-| -}
watch4 : String -> (a -> b -> c -> d -> e) -> a -> b -> c -> d -> e
watch4 tag fn a b c d =
    let
        ( normalizedTag, indent ) =
            formatTag tag

        _ =
            Debug.log normalizedTag a

        _ =
            Debug.log indent b

        _ =
            Debug.log indent c

        _ =
            Debug.log indent d
    in
    Debug.log indent (fn a b c d)


{-| -}
watch5 : String -> (a -> b -> c -> d -> e -> f) -> a -> b -> c -> d -> e -> f
watch5 tag fn a b c d e =
    let
        ( normalizedTag, indent ) =
            formatTag tag

        _ =
            Debug.log normalizedTag a

        _ =
            Debug.log indent b

        _ =
            Debug.log indent c

        _ =
            Debug.log indent d

        _ =
            Debug.log indent e
    in
    Debug.log indent (fn a b c d e)
