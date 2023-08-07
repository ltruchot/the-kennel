module Frontend exposing (..)

import Browser exposing (UrlRequest(..))
import Browser.Navigation as Nav
import Css.Global
import DesignSystem.CardWithEffect exposing (cardWithEffect)
import DesignSystem.Header exposing (appHeader)
import DesignSystem.Hero exposing (hero)
import Html.Styled as Html exposing (toUnstyled)
import Html.Styled.Attributes exposing (css)
import Lamdera
import Tailwind.Theme as TwTheme
import Tailwind.Utilities as Tw exposing (globalStyles)
import Types exposing (..)
import Url


type alias Model =
    FrontendModel


app =
    Lamdera.frontend
        { init = init
        , onUrlRequest = UrlClicked
        , onUrlChange = UrlChanged
        , update = update
        , updateFromBackend = updateFromBackend
        , subscriptions = \m -> Sub.none
        , view = view
        }


init : Url.Url -> Nav.Key -> ( Model, Cmd FrontendMsg )
init url key =
    ( { key = key
      , message = "Welcome to Lamdera! You're looking at the auto-generated base implementation. Check out src/Frontend.elm to start coding!"
      }
    , Cmd.none
    )


update : FrontendMsg -> Model -> ( Model, Cmd FrontendMsg )
update msg model =
    case msg of
        UrlClicked urlRequest ->
            case urlRequest of
                Internal url ->
                    ( model
                    , Nav.pushUrl model.key (Url.toString url)
                    )

                External url ->
                    ( model
                    , Nav.load url
                    )

        UrlChanged url ->
            ( model, Cmd.none )

        NoOpFrontendMsg ->
            ( model, Cmd.none )


updateFromBackend : ToFrontend -> Model -> ( Model, Cmd FrontendMsg )
updateFromBackend msg model =
    case msg of
        NoOpToFrontend ->
            ( model, Cmd.none )


view : Model -> Browser.Document FrontendMsg
view model =
    { title = ""
    , body =
        [ toUnstyled
            (Html.div []
                [ Css.Global.global globalStyles
                , Html.div
                    [ css
                        [ Tw.bg_color TwTheme.zinc_900
                        , Tw.h_full
                        , Tw.py_24
                        , Tw.px_8
                        , Tw.antialiased
                        , Tw.relative
                        ]
                    ]
                    [ hero
                    , Html.div [ css [ Tw.w_full, Tw.relative ] ]
                        [ appHeader
                        , Html.div [ css [ Tw.mb_8, Tw.text_color TwTheme.white, Tw.text_2xl ] ] [ Html.text "Choose you character..." ]
                        , Html.div [ css [ Tw.flex, Tw.gap_4 ] ]
                            [ cardWithEffect "/white-fox.png" "White Fox"
                            , cardWithEffect "/black-mamba.png" "Black Mamba"
                            ]
                        ]
                    ]
                ]
            )
        ]
    }
