
set background=dark

hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "vanzan"

if version >= 700
  hi CursorLine guibg=#080c10
  hi CursorColumn guibg=#101418
  hi MatchParen guifg=white guibg=#747270 gui=bold

  "Tabpages
  hi TabLine guifg=black guibg=#b0b8c0 gui=italic
  hi TabLineFill guifg=#9098a0
  hi TabLineSel guifg=black guibg=#f0f0f0 gui=italic,bold

  "P-Menu (auto-completion)
  hi Pmenu guifg=white guibg=#a4a2a0
  "PmenuSel
  "PmenuSbar
  "PmenuThumb
endif
"
" Html-Titles
hi Title      guifg=#202020 gui=bold
hi Underlined  guifg=#202020 gui=underline


hi Cursor    guifg=black   guibg=#b8b4b0
hi lCursor   guifg=black   guibg=white
hi LineNr    guifg=#404040 guibg=#000000 gui=none

hi Normal    guifg=#68727c   guibg=#181c20

hi StatusLine guifg=white guibg=#080c10 gui=bold
hi StatusLineNC guifg=#404040 guibg=#000000 gui=italic
hi VertSplit guifg=#c8c4c0 guibg=#c8c4c0 gui=NONE

" hi Folded    guifg=#708090 guibg=#c0d0e0
hi Folded    guifg=#848280 guibg=#e8e4e0 gui=italic

hi NonText   guifg=#58626c guibg=#080c10
" Kommentare
hi Comment   guifg=#383c40 gui=italic

" Konstanten
hi Constant  guifg=#acb5bd gui=italic
hi String    guifg=#8390a1 guibg=#282c30
" Python: %(...)s - constructs, encoding, D: \n etc
hi Special    guifg=#637081 guibg=#282c30 gui=italic

hi Number   guifg=#aab7c0
hi Float     guifg=#a7b3bf
"hi Statement guifg=#0070e0 gui=NONE
" Python: def and so on, html: tag-names
"hi Statement  guifg=#607080 gui=bold

" . D: debug, mixin, debug, scope, throw, Python: def
hi Statement   guifg=#a6a7ae gui=bold
hi Operator  guifg=#8090a0 gui=italic
" HTML: arguments
"hi Type       guifg=#202020 gui=none
hi Type        guifg=#a6a7ae gui=none
" Python: Standard exceptions, True&False
hi Structure  guifg=#a6a7ae gui=underline,bold
" Python class names,  decorator names
hi Function    guifg=#8b9298 gui=italic


hi Macro   guifg=#545250 gui=none
hi Directory   guifg=#949290 gui=none


hi Identifier guifg=#545250 gui=none

"hi Repeat      guifg=#54f250 gui=underline
hi Repeat        guifg=#838b96 guibg=#0c0d10 gui=underline
hi Conditional   guifg=#838b96 guibg=#141518 gui=underline

" Cheetah: #-Symbol, function-names, D: import
"hi PreProc    guifg=#434b56 guibg=#101418 gui=none
hi PreProc   guifg=#68727c gui=underline
" Cheetah: def, attr, for and so on, Python: Decorators
hi Define      guifg=#aab7c0 gui=italic

hi Error      guifg=#a02000 guibg=white gui=bold,underline
hi Todo       guifg=#848280 guibg=NONE gui=bold,underline


" color of <TAB>s etc...  
"hi SpecialKey guifg=#d8a080 guibg=#e8e8e8 gui=italic  
hi SpecialKey guifg=#c4c2c0 guibg=#14181c gui=italic,bold  

" Diff
hi DiffChange guifg=NONE guibg=#e4e2e0 gui=italic
hi DiffText guifg=NONE guibg=#f0e0a0 gui=none
hi DiffAdd guifg=NONE guibg=#c0e0d0 gui=bold
hi DiffDelete guifg=NONE guibg=#f0a0a0 gui=italic,bold


