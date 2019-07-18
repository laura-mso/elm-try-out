module Main exposing (..)

import Browser
import Html exposing (Html, text, div, h1, img, input)
import Html.Attributes exposing (src, type_)
import Html.Events exposing (onInput)
import Dict


---- MODEL ----


type alias Model =
    Dict.Dict String String
   

init : ( Model, Cmd Msg )
init =
    ( Dict.singleton "name" "laura", Cmd.none )



---- UPDATE ----


type Msg
    = NoOp
    | Keychange String
    | Valuechange String


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    div []
        [ input [type_ "text"] [], 
          input [type_ "text", onInput Valuechange] [],
          div [] [text (Debug.toString model)],
          div [] [text (Debug.toString (Valuechange "Betta"))]
        ]
        



---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }
