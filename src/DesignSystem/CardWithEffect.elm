module DesignSystem.CardWithEffect exposing (cardWithEffect)

import Css
import Html.Styled as Html
import Html.Styled.Attributes exposing (css, src)
import String exposing (pad)
import Svg.Styled as Svg exposing (path, svg)
import Svg.Styled.Attributes as SvgAttr
import Tailwind.Theme as TwTheme
import Tailwind.Utilities as Tw


twCssCardContainer =
    [ Tw.relative
    , Tw.flex
    , Tw.rounded_2xl
    , Tw.bg_color TwTheme.white
    , Tw.bg_opacity_40
    , Tw.flex_grow
    , Tw.p_4
    ]


cardWithEffect imgPath text =
    Html.div [ css twCssCardContainer ]
        [ Html.div
            [ css
                [ Tw.pointer_events_none
                ]
            ]
            [ Html.div
                [ css
                    [ Tw.absolute
                    , Tw.inset_0
                    , Tw.rounded_2xl
                    , Css.property "-webkit-mask-image" "linear-gradient(#fff,transparent)"
                    , Css.property "mask-image" "linear-gradient(#fff,transparent)"
                    ]
                ]
                []
            , Html.div [ css [ Tw.text_center ] ]
                [ Html.img [ css [ Tw.mb_2 ], src imgPath ] []
                , Html.text text
                ]

            {- } svg
               [ Attr.attribute "aria-hidden" "true"
               , SvgAttr.css
                   [ Tw.absolute
                   , Tw.inset_x_0
                   , Tw.inset_y_[_30%]
                   , Tw.h_[160%]
                   , Tw.w_full
                   , Tw.skew_y_[_18deg]
                   , Tw.fill_blackover[0_dot_02]
                   , Tw.stroke_blackover5
                   , Bp.dark
                       [ Tw.fill_whiteover1
                       , Tw.stroke_whiteover2_dot_5
                       ]
                   ]
               ]
               [ Svg.defs []
                   [ Svg.pattern
                       [ SvgAttr.id ":r35:"
                       , SvgAttr.width "72"
                       , SvgAttr.height "56"
                       , SvgAttr.patternUnits "userSpaceOnUse"
                       , SvgAttr.x "50%"
                       , SvgAttr.y "16"
                       ]
                       [ path
                           [ SvgAttr.d "M.5 56V.5H72"
                           , SvgAttr.fill "none"
                           ]
                           []
                       ]
                   ]
               , Svg.rect
                   [ SvgAttr.width "100%"
                   , SvgAttr.height "100%"
                   , SvgAttr.strokeWidth "0"
                   , SvgAttr.fill "url(#:r35:)"
                   ]
                   []
               , svg
                   [ SvgAttr.x "50%"
                   , SvgAttr.y "16"
                   , SvgAttr.css
                       [ Tw.overflow_visible
                       ]
                   ]
                   [ Svg.rect
                       [ SvgAttr.strokeWidth "0"
                       , SvgAttr.width "73"
                       , SvgAttr.height "57"
                       , SvgAttr.x "0"
                       , SvgAttr.y "56"
                       ]
                       []
                   , Svg.rect
                       [ SvgAttr.strokeWidth "0"
                       , SvgAttr.width "73"
                       , SvgAttr.height "57"
                       , SvgAttr.x "72"
                       , SvgAttr.y "168"
                       ]
                       []
                   ]
            -}
            ]

        {- , div
                   [ css
                       [ Tw.absolute
                       , Tw.inset_0
                       , Tw.rounded_2xl
                       , Tw.bg_gradient_to_r
                       , Tw.from_[#D7EDEA]
                       , Tw.to_[#F4FBDF]
                       , Tw.opacity_0
                       , Tw.transition
                       , Tw.duration_300
                       , Bp.dark
                           [ Tw.from_[#202D2E]
                           , Tw.to_[#303428]
                           ]
                       , Bp.group-hover
                           [ Tw.opacity_100
                           ]
                       ]
                   , Attr.style "mask-image" "radial-gradient(180px at 166px 24px, white, transparent)"
                   , Attr.attribute "data-projection-id" "28"
                   ]
                   []
               , div
                   [ css
                       [ Tw.absolute
                       , Tw.inset_0
                       , Tw.rounded_2xl
                       , Tw.opacity_0
                       , Tw.mix_blend_overlay
                       , Tw.transition
                       , Tw.duration_300
                       , Bp.group-hover
                           [ Tw.opacity_100
                           ]
                       ]
                   , Attr.style "mask-image" "radial-gradient(180px at 166px 24px, white, transparent)"
                   , Attr.attribute "data-projection-id" "29"
                   ]
                   [ svg
                       [ Attr.attribute "aria-hidden" "true"
                       , SvgAttr.css
                           [ Tw.absolute
                           , Tw.inset_x_0
                           , Tw.inset_y_[_30%]
                           , Tw.h_[160%]
                           , Tw.w_full
                           , Tw.skew_y_[_18deg]
                           , Tw.fill_blackover50
                           , Tw.stroke_blackover70
                           , Bp.dark
                               [ Tw.fill_whiteover2_dot_5
                               , Tw.stroke_whiteover10
                               ]
                           ]
                       ]
                       [ Svg.defs []
                           [ Svg.pattern
                               [ SvgAttr.id ":r36:"
                               , SvgAttr.width "72"
                               , SvgAttr.height "56"
                               , SvgAttr.patternUnits "userSpaceOnUse"
                               , SvgAttr.x "50%"
                               , SvgAttr.y "16"
                               ]
                               [ path
                                   [ SvgAttr.d "M.5 56V.5H72"
                                   , SvgAttr.fill "none"
                                   ]
                                   []
                               ]
                           ]
                       , Svg.rect
                           [ SvgAttr.width "100%"
                           , SvgAttr.height "100%"
                           , SvgAttr.strokeWidth "0"
                           , SvgAttr.fill "url(#:r36:)"
                           ]
                           []
                       , svg
                           [ SvgAttr.x "50%"
                           , SvgAttr.y "16"
                           , SvgAttr.css
                               [ Tw.overflow_visible
                               ]
                           ]
                           [ Svg.rect
                               [ SvgAttr.strokeWidth "0"
                               , SvgAttr.width "73"
                               , SvgAttr.height "57"
                               , SvgAttr.x "0"
                               , SvgAttr.y "56"
                               ]
                               []
                           , Svg.rect
                               [ SvgAttr.strokeWidth "0"
                               , SvgAttr.width "73"
                               , SvgAttr.height "57"
                               , SvgAttr.x "72"
                               , SvgAttr.y "168"
                               ]
                               []
                           ]
                       ]
                   ]
               ]
           , div
               [ css
                   [ Tw.absolute
                   , Tw.inset_0
                   , Tw.rounded_2xl
                   , Tw.ring_1
                   , Tw.ring_inset
                   , Tw.ring_zinc_900over7_dot_5
                   , Bp.dark
                       [ Tw.ring_whiteover10
                       , Bp.dark
                           [ Tw.ring_whiteover20
                           ]
                       ]
                   , Bp.group-hover
                       [ Tw.ring_zinc_900over10
                       ]
                   ]
               ]
               []
           , div
               [ css
                   [ Tw.relative
                   , Tw.rounded_2xl
                   , Tw.px_4
                   , Tw.pb_4
                   , Tw.pt_16
                   ]
               ]
               [ div
                   [ css
                       [ Tw.flex
                       , Tw.h_7
                       , Tw.w_7
                       , Tw.items_center
                       , Tw.justify_center
                       , Tw.rounded_full
                       , Tw.bg_zinc_900over5
                       , Tw.ring_1
                       , Tw.ring_zinc_900over25
                       , Tw.backdrop_blur_[2px]
                       , Tw.transition
                       , Tw.duration_300
                       , Bp.dark
                           [ Tw.bg_whiteover7_dot_5
                           , Tw.ring_whiteover15
                           , Bp.dark
                               [ Tw.bg_emerald_300over10
                               , Tw.ring_emerald_400
                               ]
                           ]
                       , Bp.group-hover
                           [ Tw.bg_whiteover50
                           , Tw.ring_zinc_900over25
                           ]
                       ]
                   ]
                   [ svg
                       [ SvgAttr.viewBox "0 0 20 20"
                       , Attr.attribute "aria-hidden" "true"
                       , SvgAttr.css
                           [ Tw.h_5
                           , Tw.w_5
                           , Tw.fill_zinc_700over10
                           , Tw.stroke_zinc_700
                           , Tw.transition_colors
                           , Tw.duration_300
                           , Bp.dark
                               [ Tw.fill_whiteover10
                               , Tw.stroke_zinc_400
                               , Bp.dark
                                   [ Tw.fill_emerald_300over10
                                   , Tw.stroke_emerald_400
                                   ]
                               ]
                           , Bp.group-hover
                               [ Tw.stroke_zinc_900
                               ]
                           ]
                       ]
                       [ path
                           [ SvgAttr.strokeWidth "0"
                           , SvgAttr.fillRule "evenodd"
                           , SvgAttr.clipRule "evenodd"
                           , SvgAttr.d "M10 .5a9.5 9.5 0 0 1 5.598 17.177C14.466 15.177 12.383 13.5 10 13.5s-4.466 1.677-5.598 4.177A9.5 9.5 0 0 1 10 .5ZM12.5 8a2.5 2.5 0 1 0-5 0 2.5 2.5 0 0 0 5 0Z"
                           ]
                           []
                       , path
                           [ SvgAttr.fill "none"
                           , SvgAttr.strokeLinecap "round"
                           , SvgAttr.strokeLinejoin "round"
                           , SvgAttr.d "M10 .5a9.5 9.5 0 0 1 5.598 17.177A9.458 9.458 0 0 1 10 19.5a9.458 9.458 0 0 1-5.598-1.823A9.5 9.5 0 0 1 10 .5Z"
                           ]
                           []
                       , path
                           [ SvgAttr.fill "none"
                           , SvgAttr.strokeLinecap "round"
                           , SvgAttr.strokeLinejoin "round"
                           , SvgAttr.d "M4.402 17.677C5.534 15.177 7.617 13.5 10 13.5s4.466 1.677 5.598 4.177M10 5.5a2.5 2.5 0 1 1 0 5 2.5 2.5 0 0 1 0-5Z"
                           ]
                           []
                       ]
                   ]
               , h3
                   [ css
                       [ Tw.mt_4
                       , Tw.text_sm
                       , Tw.font_semibold
                       , Tw.leading_7
                       , Tw.text_zinc_900
                       , Bp.dark
                           [ Tw.text_white
                           ]
                       ]
                   ]
                   [ a
                       [ Attr.href "/contacts"
                       ]
                       [ span
                           [ css
                               [ Tw.absolute
                               , Tw.inset_0
                               , Tw.rounded_2xl
                               ]
                           ]
                           []
                       , text "Contacts" ]
                   ]
               , p
                   [ css
                       [ Tw.mt_1
                       , Tw.text_sm
                       , Tw.text_zinc_600
                       , Bp.dark
                           [ Tw.text_zinc_400
                           ]
                       ]
                   ]
                   [ text "Learn about the contact model and how to create, retrieve, update, delete, and list contacts." ]
               ]
        -}
        ]
