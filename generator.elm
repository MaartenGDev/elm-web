module Numbers exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)

model =
  { randomImageIsVisible = False }

type Msg =
  ShowRandomImage

toggleVisibilityMessage: Bool -> String
toggleVisibilityMessage isVisible =
  if isVisible then "Hide" else "Show"

update msg model_ =
  case msg of
    ShowRandomImage -> { model_ | randomImageIsVisible = not model_.randomImageIsVisible }

view model_ =
  div []
      [h1 [] [text "Show Image"]
      , button [onClick ShowRandomImage] [text <| toggleVisibilityMessage model_.randomImageIsVisible ++ " Random Image"]
      , if model_.randomImageIsVisible then
          img [src "https://unsplash.it/200/300/?random"] []
        else
          text ""
      ]

main =
  beginnerProgram
  { model = model
  , update = update
  , view = view
  }
