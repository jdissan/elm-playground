module App.Model exposing (App, initial, update)

import TrackList.Model exposing (TrackList)
import Search.Model exposing (Search)
import App.Action exposing (Action(NoOp))


type alias App =
  { trackList : TrackList
  , search : Search
  }


empty : App
empty =
  App TrackList.Model.initial Search.Model.initial

initial : (App, Cmd Action)
initial =
  (empty, Cmd.none)


update : Action -> App -> (App, Cmd Action)
update action app =
  case action of
    NoOp ->
      (app, Cmd.none)
