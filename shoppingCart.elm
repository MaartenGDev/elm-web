module ShoppingCart exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)

type alias Link =
  { name : String
  , location : String
  }

type alias Links =
  List Link

links =
  [ { name = "Home"
    , location = "home.html"
    }
  , { name = "About"
    , location = "about.html"
    }
  ]

renderLink link =
  li []
  [
    b [] [text <| link.name ++ " "]
  , a [href link.location] [text <| "Link to: " ++ link.location]
  ]

view: Links -> Html msg
view links =
  ul [] (List.map(renderLink) links)

main =
  view links
