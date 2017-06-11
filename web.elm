module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)

main = beginnerProgram
  { model = model
  , update = update
  , view = view
  }

model =
  { name = "My Cool Counter"
  , count = 0
  }

type alias Model =
  { name: String
  , count: Int
  }

type Message
  = Increment
  | Decrement

update : Message -> Model -> Model
update message model =
  case message of
    Increment -> { model | count = model.count + 1}
    Decrement -> { model | count = model.count - 1}

view : Model -> Html Message
view model =
  div []
  [ h1 [] [text model.name]
  , div [] [text (toString model.count)]
  , button [onClick Increment] [text "Increment"]
  , button [onClick Decrement] [text "Decrement"]
  ]
