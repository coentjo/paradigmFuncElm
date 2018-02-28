import Html exposing (Html, div, input, text)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)
import String



main =
  Html.beginnerProgram
    { model = model
    , view = view
    , update = update
    }



-- MODEL


type alias Model =
  { content : String
  }


model : Model
model =
  Model ""


ftie : Int -> Int
ftie x =
  2 * x + x * x


-- 1e parameter: een functie van Int -> Int
-- 2e parameter: x-waarde
showFunctionValue : (Int -> Int) -> Int -> String
showFunctionValue ftion x =
  (toString x) ++ " -> " ++ (toString (ftion x))


-- UPDATE


type Msg
  = Change String

update : Msg -> Model -> Model
update msg model =
  case msg of
    Change newContent ->
      { model | content = newContent }



-- VIEW


view : Model -> Html Msg
view model =
  div []
    [ input [ placeholder "Table", onInput Change ] []
    , div [] [ text model.content ]
--    , div [] [ text ((toString 1) ++ " -> " ++ (toString (ftie 1))) ]
    , div [] [ text (showFunctionValue ftie 1) ]
    , div [] [ text (showFunctionValue ftie 2) ]
    , div [] [ text (showFunctionValue ftie 3) ]
    , div [] [ text (showFunctionValue ftie 4) ]
    , div [] [ text (showFunctionValue ftie 5) ]
    ]