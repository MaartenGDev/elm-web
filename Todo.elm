module Todo exposing (..)

import Html exposing (..)
import Html.Attributes exposing(..)
import Html.Events exposing (..)

main =
  beginnerProgram
  { model = model
  , update = update
  , view = view
  }

--model
type alias Model =
  { todo: String,
  todos: List String
  }

model =
  { todo = ""
  , todos = []
  }
-- update
type Message =
  UpdateText String
  | AddTodo
  | RemoveTodo String

update message model =
  case message of
    UpdateText text ->
      { model | todo = text }

    AddTodo ->
      { model | todos = model.todo :: model.todos }
    RemoveTodo todo ->
      { model | todos = List.filter(\t -> t /= todo) model.todos}

-- view
renderTodo todo =
  li []
  [ text todo
  , button [ onClick (RemoveTodo todo)] [ text "X" ]
  ]


renderTodos todos =
  ul []
  (List.map renderTodo todos)

view model =
  div []
    [ input [type_ "text"
            , onInput UpdateText] []
    , button [onClick AddTodo] [ text "Add Todo" ]
    , div [] [ text model.todo ]
    , (renderTodos model.todos)
    ]
