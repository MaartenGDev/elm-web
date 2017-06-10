module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import List

type alias Ship =
  { name: String
  , model : String
  , cost : Int
  }

ships =
  [ { name = "X-wing", model = "fast", cost = 149999 }
  , { name = "Millennium Falcon", model = "slow", cost = 100000 }
  , { name = "Death Star", model = "slowered", cost = 1000000 }
  ]

renderShip ship =
  li []
      [ text ship.name
      , text " , "
      , b []
        [ text ship.model ]
      , text " - "
      , text <| "$" ++ toString ship.cost
      ]


renderShips ships =
  div
    [ style
      [ ("font-family","-apple-system")
      , ("color","#538FC9")
      , ("Padding", "1em")
      ]
    ]
    [
    h1 [] [text "Ships"]
    , ul [] (List.map renderShip ships)
    ]

main = renderShips ships
