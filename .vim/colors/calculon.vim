

hi clear

if exists("syntax_on")
  syntax reset
endif
set background=dark

let colors_name = "calculon"


let s:black = "#000000"
let s:black1 = "#0a0a0a"
let s:black2 = "#202020"

let s:grey = '#303030'
"let s:grey1 = '#40403c'
let s:grey2 = '#605850'
let s:grey3 = '#807870'

let s:green = '#92c95f'
let s:bright_green = '#d2c98f'
let s:blue = '#608090'
let s:bright_blue = '#90b0c0'
let s:orange = "#c08820"
"let s:bright_orange = '#ebc471'
let s:bright_orange = '#ab8451'
"let s:weak_orange = '#dbb481'
let s:weak_orange = '#cba471'
"let s:red = '#d04326'
let s:red = '#e05336'
let s:mild_red = '#e08366'
"let s:violet = '#a999ac'
let s:violet = '#a999ac'
let s:bright_violet = '#b979bc'
let s:yellow = '#e3d796'
"let s:white = '#b0ae8c'
"let s:white = '#d0ceac'
let s:white = '#fff0e0'
let s:bright_white = '#fff8f0'

let s:greyblue1 = '#609040'
let s:greyblue3 = '#80c060'
let s:green1 = '#80c060'
let s:green2 = '#609040'

"let s:beige = '#ceb67f'
"let s:cyan = '#74dad9'
"let s:dark_grey_blue = '#34383c'
"let s:darkest = '#000408'
"let s:darkgrey = '#1a1a1a'
let s:grey_blue = '#aab5b7'
"let s:light_grey_blue = '#a0a8b0'
"let s:light_orange = '#ebc471'
"let s:lightgreen = '#c2c98f'
"let s:lightgrey = '#605958'
"let s:mid_grey_blue = '#64686c'
"let s:white = '#fffedc'
"let s:white = '#f0eecc'
"let s:bright_white = '#ffffff'
"let s:yellow = '#e3d796'


if version >= 700
  exe 'hi CursorLine guibg='.s:black2
  exe 'hi CursorColumn guibg='.s:black2
  
  exe 'hi ColorColumn guibg='.s:black1
  exe 'hi MatchParen guifg=white guibg='.s:bright_blue.' gui=bold'

  "Tabpages
  "hi TabLine guifg=#a09998 guibg=#202020 gui=underline
  "hi TabLineFill guifg=#a09998 guibg=#202020 gui=underline
  "hi TabLineSel guifg=#a09998 guibg=#404850 gui=underline
  "hi TabLine guifg=#a09998 guibg=#1a1a1a gui=none
  "hi TabLineFill guifg=#a09998 guibg=#1a1a1a gui=none
  "hi TabLineSel guifg=#000000 guibg=#a06800 gui=none
  
  exe 'hi TabLine       guifg='.s:bright_orange            .' guibg='.s:black           .' gui=none'
  exe 'hi TabLineFill   guifg='.s:bright_orange            .' guibg='.s:black           .' gui=none'
  exe 'hi TabLineSel    guifg='.s:black            .' guibg='.s:orange          .' gui=none'

  "P-Menu (auto-completion)
  "hi Pmenu guifg=#605958 guibg=#101418 gui=none
  "hi PmenuSel guifg=#a09998 guibg=#404040 gui=underline
  exe 'hi Pmenu         guifg='.s:grey3     .' guibg='.s:black1     .' gui=none'
  exe 'hi PmenuSel      guifg='.s:white     .' guibg='.s:grey   .' gui=none'
  exe 'hi PmenuSbar     guibg='.s:black2
  exe 'hi PmenuThumb    guifg='.s:red
endif

hi Visual guibg=#404040

"hi Cursor guifg=NONE guibg=#586068
hi Cursor guibg=#f0a000 guifg=NONE


exe 'hi Normal         guifg='.s:white             .' guibg='.s:black
exe 'hi Underlined     guifg='.s:white             .' guibg='.s:black              .' gui=underline'
exe 'hi NonText        guifg='.s:grey         .' guibg='.s:black
exe 'hi SpecialKey     guifg='.s:grey              .' guibg='.s:black

exe 'hi LineNr         guifg='.s:grey2     .' guibg='.s:black  .' gui=none'
exe 'hi StatusLine     guifg='.s:white             .' guibg='.s:grey           .' gui=none'
exe 'hi StatusLineNC   guifg='.s:grey3         .' guibg='.s:grey            .' gui=none'
exe 'hi VertSplit      guifg='.s:black              .' guibg='.s:black .' gui=none'

"exe 'hi Folded         guifg='.s:grey2         .' guibg='.s:black  .' gui=italic'
exe 'hi Folded         guifg='.s:grey2         .' guibg='.s:black
exe 'hi FoldColumn     guifg='.s:grey3         .' guibg='.s:black2  .' gui=none'
exe 'hi SignColumn     guifg='.s:grey3         .' guibg='.s:black  .' gui=none'

"exe 'hi Comment        guifg='.s:grey3     .' guibg='.s:black        .' gui=italic'
"exe 'hi TODO           guifg='.s:red         .' guibg='.s:black        .' gui=italic'
exe 'hi Comment        guifg='.s:grey3     .' guibg='.s:black        
exe 'hi TODO           guifg='.s:red         .' guibg='.s:black        

exe 'hi Title          guifg='.s:orange               .' guibg='.s:black        .' gui=bold'
exe 'hi TagListFileName          guifg='.s:bright_orange               .' guibg='.s:black        .' gui=none'
"exe 'hi htmlTitle          guifg='.s:red               .' guibg='.s:darkgrey        .' gui=underline'
"exe 'hi Title          guifg='.s:black            .' guibg='.s:orange        .' gui=bold'

exe 'hi Constant       guifg='.s:mild_red               .' guibg='.s:black        .' gui=none'
exe 'hi String         guifg='.s:green             .' guibg='.s:black        .' gui=none'
exe 'hi Special        guifg='.s:bright_green        .' guibg='.s:black        .' gui=none'
exe 'hi cFormat        guifg='.s:bright_green        .' guibg='.s:black        .' gui=none'

exe 'hi Identifier     guifg='.s:bright_blue         .' guibg='.s:black        .' gui=none'
exe 'hi Statement      guifg='.s:bright_orange             .' guibg='.s:black        .' gui=none'
exe 'hi Label      guifg='.s:weak_orange             .' guibg='.s:black        .' gui=underline'
exe 'hi Conditional    guifg='.s:green1             .' guibg='.s:black        .' gui=bold'
exe 'hi Repeat         guifg='.s:green2             .' guibg='.s:black        .' gui=bold'
exe 'hi Structure      guifg='.s:grey_blue            .' guibg='.s:black       .' gui=none'
exe 'hi Function       guifg='.s:violet            .' guibg='.s:black        .' gui=none'

exe 'hi PreProc        guifg='.s:violet         .' guibg='.s:black        .' gui=none'
exe 'hi Operator       guifg='.s:bright_orange      .' guibg='.s:black        .' gui=none'
"exe 'hi Type           guifg='.s:bright_blue     .' guibg='.s:black        .' gui=italic'
exe 'hi Type           guifg='.s:bright_blue     .' guibg='.s:black 


exe 'hi gitcommitFile  guifg='.s:bright_orange .' guibg='.s:black .' gui=none'
exe 'hi gitcommitUntrackedFile  guifg='.s:bright_orange .' guibg='.s:black .' gui=none'
exe 'hi gitcommitDiscardedFile  guifg='.s:red .' guibg='.s:black .' gui=bold'
exe 'hi gitcommitUnmergedFile  guifg='.s:red .' guibg='.s:black .' gui=none'
exe 'hi gitcommitSelectedFile  guifg='.s:green .' guibg='.s:black .' gui=none'


"exe 'hi NERDTreeFlag   guifg='.s:bright_orange .' guibg='.s:white. ' gui=none'
exe 'hi TagbarSignature guifg='.s:green1 .' guibg='.s:black. ' gui=none'
exe 'hi TagbarAccessPublic guifg='.s:white .' guibg='.s:black. ' gui=none'
exe 'hi TagbarAccessProtected guifg='.s:grey3 .' guibg='.s:black. ' gui=none'
exe 'hi TagbarAccessPrivate guifg='.s:grey2 .' guibg='.s:black. ' gui=none'
exe 'hi gitGutterChange guifg=#f0a000 gui=bold guibg='.s:black
exe 'hi gitGutterAdd guifg=#60f000 gui=bold guibg='.s:black
exe 'hi gitGutterDelete guifg=#f04000 gui=bold guibg='.s:black


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

"hi Search guifg=#c0c000 guibg=#000000 gui=underline
hi Search guibg=#c0c000 guifg=#000000 gui=underline

hi Directory guifg=#dad085 gui=NONE
hi Error guibg=#602020

" Plugins

"TODO exe 'hi TagListFileName  guifg='.s:lightgrey               .' guibg='.s:darkgrey        .' gui=underline'
"exe 'hi TagListTitle  guifg='.s:mid_grey_blue               .' guibg='.s:darkgrey        .' gui=italic'

