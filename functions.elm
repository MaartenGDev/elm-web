import Html exposing (Html, text)
import String

makeAlot: String -> String
makeAlot =
  String.repeat 99

view: String -> Html msg
view message =
  -- text <| String.repeat 3 (String.toUpper message)
  message
    |> String.toUpper
    |> \x -> x ++ ", "
    |> makeAlot
    |> text

main =
  view "Hello World"
