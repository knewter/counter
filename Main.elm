module Main exposing (..)

import Html exposing (..)
import Html.Events exposing (onClick)
import Html.App as App


type alias Model =
    Int


type CounterMsg
    = Increment
    | Decrement


main : Program Never
main =
    App.beginnerProgram
        { model = 0
        , update = update
        , view = view
        }


update : CounterMsg -> Model -> Model
update msg model =
    case msg of
        Decrement ->
            model - 1

        Increment ->
            model + 1


view : Model -> Html CounterMsg
view model =
    div []
        [ button [ onClick Decrement ] [ text "-" ]
        , div [] [ text (toString model) ]
        , button [ onClick Increment ] [ text "+" ]
        ]
