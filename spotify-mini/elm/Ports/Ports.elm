port module Ports.Ports exposing (..)

import TrackList.Model exposing (TrackList)


port updateTrackList : (TrackList -> msg) -> Sub msg


port clearTrackList : (TrackList -> msg) -> Sub msg


{-| Launches API albums/tracks search for given query
-}
port search : String -> Cmd msg


{-| Plays given song in audio player
-}
port play : Bool -> Cmd msg
