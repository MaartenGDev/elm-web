module FoodFinder exposing (..)

import Html exposing (..)
import List exposing (..)

favoriteFoods =
  ["Pizza", "Pasta", "Macaronie"]

renderFood food =
  case food of
    Just x -> x
    Nothing -> "No Food Today"

main =
    reverse favoriteFoods
    |> head
    |> renderFood
    |> \x -> String.toUpper x
    |> text
