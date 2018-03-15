# elm-debug-watch

Here are some convenience functions to log the input and output of a function.

You can use it just by putting it in front of a function you’re trying to debug.

```elm
import Debug.Watch as Debug

x =
    Debug.watch "add one" addOne 5

```

results in a console log of

```console
add one
    input: 5
   output: 6
```