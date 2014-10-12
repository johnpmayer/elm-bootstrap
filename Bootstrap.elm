
module Bootstrap where

import Graphics.Input (Handle)
import Html (..)
import Html.Tags (..)

data ControlType = TextInput | Select [String]

type Control =
  { controlType : ControlType
  , handle : Handle String
  }

class = attr "className"

formControl : Control -> Html
formControl control = case control.controlType of
  TextInput -> 
    input
      [ attr "type" "text"
      , class "form-control"
      , on "change" getValue control.handle identity
      ]
      []
  Select options ->
    select
      [ class "form-control"
      , on "change" getValue control.handle identity
      ]
      <| map (\s -> option [] [ text s ]) options

formGroup : String -> String -> Control -> Html
formGroup name s control =
  div [ class "form-group" ]
    [ label [ class "control-label col-sm-2" ] [ text s ]
    , div [ class "col-sm-10" ] [ formControl control ] 
    ]

