module Player.View exposing (render)

import Html exposing (Html, div, audio, text)
import Html.Attributes exposing (src, controls, class)
import App.Msg exposing (Msg)
import Track.Model exposing (Track)


render : Maybe Track -> Html Msg
render track =
    let
        source =
            case track of
                Nothing ->
                    ""

                Just track ->
                    track.src
    in
        div [ class "container helpers with-small-top-gap" ]
            [ audio [ src source, controls True ]
                []
            ]
