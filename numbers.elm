module Numbers exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

numbers =
  [ 1, 2, 3, 4, 5]

printThings : thing -> Html msg
printThings thing =
  li [] [text <| toString thing]


fruits =
  [ { name = "Orange"}, { name = "Banana" } ]

main =
  ul [] (List.map printThings fruits)
