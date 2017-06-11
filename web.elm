module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)

type Actions
  = Increment
  | Decrement

type alias Model =
  { name: String
  , count: Int
  }

model =
  {
  name = "My Cool Item"
  , count = 0
  }

update action model =
  case action of
    Increment -> { model | count = model.count + 1}
    Decrement -> { model | count = model.count - 1}

view model =
  div []
    [
    h1 [] [text model.name]
    , h3 [] [text (toString model.count)]
    , button [onClick Increment] [text "Increment"]
    , button [onClick Decrement] [text "Decrement"]
    ]

main =
  beginnerProgram {
    model = model,
    update = update,
    view = view
  }
