
set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "phd"

" Very aggressive
"let s:orange = '#f0a000'
"let s:orange = '#b08060'
let s:violet = '#99699c'
let s:light_violet = '#a989ac'
let s:yellow = '#d3c776'
let s:red = '#d07346'
let s:green = '#99bf52'
let s:lightgreen = '#e2e9af'
let s:blue = '#5299bf'
let s:lightblue = '#72b9bf'
let s:light_orange = '#ebb431'
let s:orange = '#bba401'
let s:grey = '#808080'

let s:text = '#e0e0e0'
let s:text_hl = '#ffffff'
let s:text_minor = '#909090'
let s:text_very_minor = '#304050'

let s:greyed = '#687898'

let s:popup_bg = '#101010'
let s:popup_bg_hl = '#000000'
let s:popup_fg = s:text
let s:popup_fg_hl = s:text_hl

"let s:structure = s:red
"let s:constant1 = s:green
"let s:constant2 = s:lightgreen
"let s:control1 = s:blue
"let s:control2 = s:lightblue
"let s:background = '#081838'
"let s:background_hl = '#182848'
"let s:background_minor = '#000828'
"let s:border1_bg = s:background_hl
"let s:border1_fg = s:text_minor


let s:structure = '#3E4F4F'
let s:constant1 = '#C8A77B'
let s:constant2 = '#FC9D4A'
let s:control1 = '#F56203'
let s:control2 = '#C34E02'
let s:background = '#000014'
let s:background_minor = '#717C8C'
let s:background_hl = '#2A3B63'
let s:border1_bg = s:background_hl
let s:border1_fg = s:text_minor



if version >= 700
  "Tabpages
  exe 'hi TabLineSel   guifg='.s:text_hl           .' guibg='.s:border1_bg      .' gui=underline'
  exe 'hi TabLine      guifg='.s:text_minor        .' guibg='.s:border1_bg      .' gui=underline'
  exe 'hi TabLineFill  guifg='.s:text_minor        .' guibg='.s:border1_bg      .' gui=none'

  "P-Menu (auto-completion)
  "hi Pmenu guifg=#605958 guibg=#101418 gui=none
  "hi PmenuSel guifg=#a09998 guibg=#404040 gui=underline
  exe 'hi CursorLine    guibg='.s:background_hl     .' gui=none'
  exe 'hi CursorColumn  guibg='.s:background_hl     .' gui=none'
  exe 'hi MatchParen    guifg='.s:text_hl           .' guibg='.s:background_hl     .' gui=bold'

  exe 'hi Pmenu         guifg='.s:text              .' guibg='.s:popup_bg      .' gui=none'
  exe 'hi PmenuSel      guifg='.s:text_hl           .' guibg='.s:popup_bg_hl   .' gui=bold'
  exe 'hi PmenuSbar                                    guibg='.s:popup_bg_hl
  exe 'hi PmenuThumb    guifg='.s:text
endif

exe 'hi Visual guibg='.s:background_hl

"hi Cursor guifg=NONE guibg=#586068
hi Cursor guibg=#b0d0f0

exe 'hi Normal         guifg='.s:text              .' guibg='.s:background
exe 'hi Underlined     guifg='.s:white             .' guibg='.s:darkgrey        .' gui=underline'
exe 'hi NonText        guifg='.s:text_very_minor   .' guibg='.s:border1_bg
exe 'hi SpecialKey     guifg='.s:text_very_minor              .' guibg='.s:background

exe 'hi LineNr         guifg='.s:border1_fg        .' guibg='.s:border1_bg      .' gui=none'
exe 'hi StatusLine     guifg='.s:text_hl           .' guibg='.s:border1_bg      .' gui=underline'
exe 'hi StatusLineNC   guifg='.s:text_minor        .' guibg='.s:border1_bg      .' gui=underline'
exe 'hi VertSplit      guifg='.s:border1_bg        .' guibg='.s:border1_bg      .' gui=none'

exe 'hi Folded         guifg='.s:text_minor         .' guibg='.s:border1_bg  .' gui=none'
exe 'hi FoldColumn     guifg='.s:text_minor         .' guibg='.s:background  .' gui=none'
exe 'hi SignColumn     guifg='.s:text_minor         .' guibg='.s:background  .' gui=none'

exe 'hi Comment        guifg='.s:greyed            .' guibg='.s:background        .' gui=none'
exe 'hi TODO           guifg='.s:greyed            .' guibg='.s:background        .' gui=bold'

exe 'hi Title          guifg='.s:red               .' guibg='.s:background        .' gui=underline'

exe 'hi Constant       guifg='.s:constant1        .' guibg='.s:background        .' gui=italic'
exe 'hi String         guifg='.s:constant1        .' guibg='.s:background        .' gui=none'
exe 'hi Special        guifg='.s:constant2        .' guibg='.s:background        .' gui=none'

exe 'hi Identifier     guifg='.s:control1          .' guibg='.s:background        .' gui=none'
exe 'hi Statement      guifg='.s:control2          .' guibg='.s:background        .' gui=none'
"exe 'hi Conditional    guifg='.s:grey             .' guibg='.s:background        .' gui=bold'
"exe 'hi Repeat         guifg='.s:light_orange             .' guibg='.s:background        .' gui=bold'
exe 'hi Structure      guifg='.s:structure         .' guibg='.s:background        .' gui=none'
exe 'hi Function       guifg='.s:light_violet      .' guibg='.s:background        .' gui=none'

exe 'hi PreProc        guifg='.s:violet            .' guibg='.s:background        .' gui=none'
exe 'hi Operator       guifg='.s:light_orange      .' guibg='.s:background        .' gui=none'
exe 'hi Type           guifg='.s:yellow            .' guibg='.s:background        .' gui=none'

"hi Identifier guifg=#7587a6
" Type d: 'class'
"hi Structure guifg=#9B859D gui=underline
"hi Function guifg=#dad085
" dylan: method, library, ... d: if, return, ...
"hi Statement guifg=#7187a1 gui=NONE
" Keywords  d: import, module...
"hi PreProc guifg=#8fbfdc
"gui=underline
"hi Operator guifg=#a07020
"hi Repeat guifg=#906040 gui=underline
"hi Type guifg=#708090

"hi Type guifg=#f9ee98 gui=NONE

"hi NonText guifg=#808080 guibg=#303030

"hi Macro guifg=#a0b0c0 gui=underline

"Tabs, trailing spaces, etc (lcs)
"hi SpecialKey guifg=#808080 guibg=#343434

"hi TooLong guibg=#ff0000 guifg=#f8f8f8

hi Search guifg=#606000 guibg=#c0c000 gui=bold

hi Directory guifg=#dad085 gui=NONE
hi Error guibg=#602020

" Plugins

exe 'hi TagListFileName  guifg='.s:lightgrey               .' guibg='.s:darkgrey        .' gui=underline'
exe 'hi TagListTitle  guifg='.s:mid_grey_blue               .' guibg='.s:darkgrey        .' gui=italic'

