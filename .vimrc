
	set encoding=utf8
	set shell=/bin/bash
	let hostname = substitute(system('hostname'), '\n', '', '')

" Might be necessary for some plugin commands e.g. ctrlp

" ----------------------------------------
" Plugin configuration
" ----------------------------------------

" NetRW
" ----------------------------------------

	let g:netrw_http_xcmd='-source >'

" Buffer lists / tag lists
" ----------------------------------------

	let g:Tlist_Sort_Type='name'
	let g:Tlist_Auto_Highlight_Tag=1
	let g:Tlist_Display_Prototype=0
	let g:Tlist_Display_Tag_Scope=1
	let g:Tlist_Compact_Format=0
	let g:Tlist_Use_Right_Window=0
	let g:Tlist_Exit_OnlyWindow=1
	let g:Tlist_Show_One_File=1
	let g:Tlist_WinWidth=60
	let g:Tlist_Enable_Fold_Column=0
	let tlist_d_settings='c++;d:macro;g:enum;s:struct;u:union;t:typedef;v:variable;f:function;c:class;T:template;p:abstract;X:mixin;m:member;M:module'
	let tlist_htmljinja_settings='html;a:anchor;f:javascript function'
	let g:tagbar_width=60

	let g:BufferListWidth = 25
	let g:BufferListMaxWidth = 50

" BufExplorer
" ----------------------------------------

	let g:bufExplorerDisableDefaultKeyMapping=1
	let g:bufExplorerUseCurrentWindow=1
	let g:bufExplorerShowRelativePath=0
	let g:bufExplorerShowDirectories=0


" NERDTree
" ----------------------------------------

	let g:NERDTreeChDirMode=0
	let g:NERDTreeWinSize=40
	"0=right/bottom 1=top/left
	let g:NERDTreeWinPos="right"

" UltiSnips
" ----------------------------------------

"	let g:UltiSnipsExpandTrigger='<c-tab>'
"	let g:UltiSnipsListSnippets='<c-s-tab>'
"	let g:UltiSnipsUsePythonVersion=2

" Syntastic
" ----------------------------------------

	let g:syntastic_cpp_check_header = 1

	let g:syntastic_c_clang_check_post_args = ""
	let g:syntastic_cpp_clang_check_post_args = ""
	let g:syntastic_cpp_checkers = ["clang_check","cppcheck","cpplint","clang_tidy"]
	let g:syntastic_cursor_column = 0
	let g:syntastic_auto_loc_list = 0

	let g:syntastic_always_populate_loc_list = 1
	let g:syntastic_check_on_open = 0
	let g:syntastic_check_on_wq = 0
	let g:syntastic_mode_map = {
		 \ "mode": "passive",
		 \ "active_filetypes": [],
		 \ "passive_filetypes": [] }

" Fugitive
" ----------------------------------------

	let g:fugitive_git_executable = 'LANG=C git'

" Git Gutter
" ----------------------------------------
	let g:gitgutter_eager = 1
	let g:gitgutter_realtime = 1
	let g:gitgutter_enabled = 0

" CtrlP
" ----------------------------------------
"
	" How many files should ctrlp consider in any search?
	" set to 0 for all of them, if unset there will be
	" some default limit and thus ctrlp won't find all files in large
	" projects!
	" source: https://github.com/kien/ctrlp.vim/issues/234
	let g:ctrlp_max_files = 0

	let g:ctrlp_map = '<c-p>'
	let g:ctrlp_cmd = 'CtrlP'
	"let g:ctrlp_cmd = 'CtrlPMRU'
	let g:ctrlp_use_caching = 1
	let g:ctrlp_clear_cache_on_exit = 0
	let g:ctrlp_show_hidden = 0
	let g:ctrlp_by_filename = 1
	let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}
	let g:cpsm_match_empty_query = 0 " see https://github.com/nixprime/cpsm/issues/15

	let g:ctrlp_root_markers = [ '.git', '.p4config', '.p4client', '.svn', 'tags' ]
	
	" Should fasten up ctrlp according to
	" http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
	"
	" Currently not using this, as
	" 1. It will *always* find a .git (in my home directory), which
	"    unfortunately is configured to ignore almost everything but dotfiles
	" 2. I usually have ag installed anyway in which case a filesystem search
	"    is blazingly fast (plus ag also honors .gitignore)
	"
	"let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . -co --exclude-standard', 'find %s -type f']
	"let g:ctrlp_use_caching = 0
	
" clang-format
" ----------------------------------------

	" Watch out for .clang-format file
	let g:clang_format#detect_style_file = 1

	" Automaticcally format on leaving insert mode
	let g:clang_format#auto_format_on_insert_leave = 0

	" Auto format on save
	" Toggle with :ClangFormatAutoToggle
	let g:clang_format#auto_format = 0

	" gq & co. shall use clang_format
	" Warning: Also is applied in insert mode,
	" will quite often fuck up what you are currently typing!
	let g:clang_format#auto_formatexpr = 0

" clang
" -----------------------------------------

	let g:clang_auto_user_options = 'compile_commands.json'
	let g:clang_auto_select = 1
	"let g:clang_complete_auto = 1
	"let g:clang_complete_copen = 1
	let g:clang_hl_errors = 1
	"let g:clang_snippets = 1
	let g:clang_copen = 1
	"let g:clang_complete_patterns = 1
	"let g:clang_snippets_engine = 'ultisnips'
	let g:clang_use_library = 1

	"let g:clang_library_path = '/usr/lib/llvm-3.6/lib/libclang-3.6.so.1'

" vimwiki
" ----------------------------------------

	let g:vimwiki_list = [{ 'path': '~/repos/git/rni-notes/', 'syntax': 'markdown', 'ext': '.md' }]


" pydoc
" ----------------------------------------

	let g:pydoc_open_cmd = 'vsplit'


" Others / not sure
" ----------------------------------------

	let g:load_doxygen_syntax=1

	let g:ctrl_by_filename = 1
	let g:signify_vcs_list = [ 'git', 'svn' ]
	let g:signify_skip_filetype = { 'log': 1, 'text': 1 }
	" Allow signify to ignore/delete all other signs for performance (as its the only thing that uses signs)
	let g:signify_sign_overwrite = 1
	" '#' -> add #if / #endif
	let g:surround_35 = "#if \1#if\1\r#endif // \1\1"
	"let g:surround_35 = "#if\r#endif"
	"
	let g:surround_92 = "\\\1\\\1{\r}"
	let g:pydiction_location = '/home/henning/.vim/_pydiction/complete-dict'

	let g:markology_enable = 0

" Clang_complete is great for completion.
" However (in contrast to ctags), it can not look at the whole projects
" sourcecode at once, so it is not very suitable for jumping
	let g:clang_jumpto_declaration_key='<nop>'

" General / including / pathogen

	let g:pathogen_disabled = []
	call pathogen#infect()


" ------------------------------------------------------------
" Various external executables (mostly for searching/tagging)
" ------------------------------------------------------------


" Use ag ("the silver searcher") instead of grep if it is available
" source: https://robots.thoughtbot.com/faster-grepping-in-vim
if executable('ag')
	" Use ag over grep
	set grepprg=ag\ --nogroup\ --nocolor

	" Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
	let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

	" ag is fast enough that CtrlP doesn't need to cache
	" edit: not true for navkit, nothing is fast amount for that
	" amount of code ;)
	let g:ctrlp_use_caching = 1
endif

" ----------------------------------------
" CScope
" ----------------------------------------

if has("cscope")
	" use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
    "set cscopetag
	
	"for ctrl-] and related operations prefer ctags as it yields shorter
	"lists.
	"See keycombos below for access to cscope lookup
	set nocscopetag

	" check cscope for definition of a symbol before checking ctags: set to 1
	" if you want the reverse search order.
	set csto=0

	" add any cscope database in current directory
	if filereadable("cscope.out")
		cs add cscope.out
	" else add the database pointed to by environment variable 
	elseif $CSCOPE_DB != ""
		cs add $CSCOPE_DB
	endif

	" show msg when any other cscope db added
	set cscopeverbose

	function! LoadCscope()
		let db = findfile("cscope.out", ".;")
		if (!empty(db))
			let path = strpart(db, 0, match(db, "/cscope.out$"))
			set nocscopeverbose " suppress 'duplicate connection' error
			exe "cs add " . db . " " . path
			set cscopeverbose
		endif
	endfunction
	au BufEnter /* call LoadCscope()

endif


" ----------------------------------------
" Undo
" ----------------------------------------
	set undofile

" ----------------------------------------
" Mappings for text manipulation
" ----------------------------------------

	" Disable arrow keys and mouse for learning to be a better vimmer
	
	set mouse=
	map <ScrollWheelUp> <Nop>
	map <ScrollWheelDown> <Nop>
	map <ScrollWheelLeft> <Nop>
	map <ScrollWheelRight> <Nop>
	imap <ScrollWheelUp> <Nop>
	imap <ScrollWheelDown> <Nop>
	imap <ScrollWheelLeft> <Nop>
	imap <ScrollWheelRight> <Nop>
	vmap <ScrollWheelUp> <Nop>
	vmap <ScrollWheelDown> <Nop>
	vmap <ScrollWheelLeft> <Nop>
	vmap <ScrollWheelRight> <Nop>

	map <UP> <Nop>
	map <DOWN> <Nop>
	map <LEFT> <Nop>
	map <RIGHT> <Nop>
	map <PageUp> <Nop>
	map <PageDown> <Nop>

	imap <UP> <Nop>
	imap <DOWN> <Nop>
	imap <LEFT> <Nop>
	imap <RIGHT> <Nop>
	imap <PageUp> <Nop>
	imap <PageDown> <Nop>

	vmap <UP> <Nop>
	vmap <DOWN> <Nop>
	vmap <LEFT> <Nop>
	vmap <RIGHT> <Nop>
	vmap <PageUp> <Nop>
	vmap <PageDown> <Nop>

	"http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
	
	let mapleader = "\<Space>"

	" -- C++
	
	" Given a getter like this:
	" 
	"		Foo& blarg() { return blargl_; }
	"		
	" Add a setter like this: 
	" 
	"		Foo& blarg() { return blargl_; }
	"		void set_blarg(Foo& x) { blargl_ = x; }
	"
	map <Leader>S ^Wyiwovoid set_pA(k^yiWjg$pA x) { k^WWWWyiwj$pA = x; }

	" -- HTML
	
	" Talking about foobar (http://foobar.baz?bing=bong&blah=blub) all the
	"		 -->
	" Talking about foobar (<a href="http://foobar.baz?bing=bong&blah=blub">http://foobar.baz?bing=bong&blah=blub</a>) all the
	map <Leader>u :s/\(http[^) ]\+\)/<a href="\1">\1<\/a>/g
	"let @u = '?httpyWi<a href="pa">Ea</a>'

	" -- LaTeX

	"map <Leader>Ot O\todo[inline]{}<ESC>i
	"map <Leader>ot o\todo[inline]{}<ESC>i
	map <A-t> \todo{}<ESC>i
	map <A-T> \todo[inline]{}<ESC>i
	imap <A-t> \todo{}<ESC>i
	imap <A-T> \todo[inline]{}<ESC>i
	" fold sections
	map <Leader>f :call LatexFold()<CR>

	map <Leader>j :call EvinceNearestLabel()<CR>

	" Walk sections
	" source: http://www.reddit.com/user/srwalker101
	let SectionRegex = '\v\\(sub)*section'
	nmap [r ?<C-R>=SectionRegex<cr><cr>
	nmap ]r /<C-R>=SectionRegex<cr><cr>

	" Walk (and mark) sentences
	"map <Leader>s <Esc>)viszz

	" -- General
	nnoremap <silent> <Leader>ml :call AppendModeline()<CR>

	" -- sourround shortcuts
	
	" delete sourrounding {}
	map <Leader>{ ds}

	" yank sourround inner word with {}
	map <Leader>} ysiw}

	" -- underlining
	map <Leader>U	yyp:s/./=/g<cr>/aonteuh<cr>

" ----------------------------------------
" Function keys & other mappings
" ----------------------------------------

	" Toggle [W]indow...
	map <silent> <Leader>wb :BufExplorer<CR>
	map <silent> <Leader>b :BufExplorer<CR>

	map <silent> <Leader>wu :GundoToggle<CR>
	map <silent> <Leader>wt :TagbarToggle<CR>
	map <silent> <Leader>wf :NERDTreeToggle<CR>

	map <silent> <Leader>wp :Pydoc <C-R><C-W><CR>

	" Toggle [M]ode...
	map <silent> <Leader>ms :SyntasticToggleMode<CR>
	map <silent> <Leader>mg :GitGutterToggle<CR>
	map <silent> <Leader>mm :MarkologyToggle<CR>

	" F5 -> Async make
	" Note: remapping C-m would be a bad idea as its equivalent to return
	" Call :Make! from insert mode
	nnoremap <F5> :Make!<CR>
	inoremap <F5> <C-o>:Make!<CR>

	" F11 -> Cursor Row / Column
	imap <silent> <F11> <ESC>:call ToggleCursorColumn()<CR>a
	map <silent> <F11> :call ToggleCursorColumn()<CR>
	imap <silent> <S-F11> <ESC>:call ToggleCursorLine()<CR>a
	map <silent> <S-F11> :call ToggleCursorLine()<CR>

	" F12 -> Rebuild CTAGS (and thelike)

	"map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
	map <F12> :!~/bin/build-ctags<CR>

	" Let Control-S be 'save' as it is in most other editors
	" Thanks Leo for the tip :)
	map <C-s> :w<CR>
	imap <C-s> <C-o>:w<CR>

	" Open files
	"
	" [E]dit...
	nnoremap <Leader>e :CtrlP<CR>

	" [R]ecent...
	nnoremap <Leader>R :CtrlPMRUFiles<CR>

	" Copy/Paste to/from system clipboard
	nmap <Leader>y "+y
	nmap <Leader>d "+d
	nmap <Leader>p "+p
	nmap <Leader>P "+P

	vmap <Leader>y "+y
	vmap <Leader>d "+d
	vmap <Leader>p "+p
	vmap <Leader>P "+P

	" full path
	map <Leader><Leader>y :let @+ = expand("%:p")<CR>

" ----------------------------------------
" , -> Change directory
" ----------------------------------------

	
	" Change directory to that of current file
	map ,cd :cd %:p:h<CR>
	map ,cr :cd /home/henning/repos/<CR>
	map ,cn :cd /home/henning/repos/gitp4/navkit/dev-guidance<CR>
	map ,ch :cd /home/henning/<CR>

" ----------------------------------------
" <Leader>o -> Open (alt) files)
" ----------------------------------------

	map <Leader>oc :e %<.c<CR>
	map <Leader>op :e %<.cpp<CR>
	map <Leader>oC :e %<.cc<CR>
	map <Leader>oh :e %<.h<CR>

	" Default mappings:
	" stage the hunk with <Leader>hs or
	" revert it with <Leader>hr.
	"
	"nmap <Leader>ha <Plug>GitGutterStageHunk
	"nmap <Leader>hu <Plug>GitGutterRevertHunk

" ----------------------------------------
" <Leader>s -> CSCOPE 
" ----------------------------------------
	
	"	's'   symbol: find all references to the token under cursor
	"	'g'   global: find global definition(s) of the token under cursor
	"	'c'   calls:  find all calls to the function name under cursor
	"	't'   text:   find all instances of the text under cursor
	"	'e'   egrep:  egrep search for the word under cursor
	"	'f'   file:   open the filename under cursor
	"	'i'   includes: find files that include the filename under cursor
	"	'd'   called: find functions that function under cursor calls
	
	nmap <Leader>ss :cs find s <C-R>=expand("<cword>")<CR><CR>	
	nmap <Leader>sg :cs find g <C-R>=expand("<cword>")<CR><CR>	
	nmap <Leader>sc :cs find c <C-R>=expand("<cword>")<CR><CR>	
	nmap <Leader>st :cs find t <C-R>=expand("<cword>")<CR><CR>	
	nmap <Leader>se :cs find e <C-R>=expand("<cword>")<CR><CR>	
	nmap <Leader>sf :cs find f <C-R>=expand("<cfile>")<CR><CR>	
	nmap <Leader>si :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
	nmap <Leader>sd :cs find d <C-R>=expand("<cword>")<CR><CR>	

	" visually select next search match
	" 
	" Unnecessary! Use 'gn' as motion that selects until end of next search
	" match!
	"
	"map <Leader>v //s<CR>v//e<CR>
	
" ----------------------------------------
" <Leader>l -> CLANG
" ----------------------------------------

	map <Leader>lf :ClangFormat<CR>
	map <Leader>lc :call g:ClangUpdateQuickFix()<CR>

	map <Leader>0 :set guifont=Gohu\ Gohufont\ 11,gohufont\ 11<CR>
	map <Leader>9 :set guifont=Gohu\ Gohufont\ 8,gohufont\ 8<CR>

	function! InsertIncludeGuard()
		let gatename = substitute(expand("%:t"), '\C\([a-z]\)\([A-Z]\)', '\1_\2', "g")
		let gatename = substitute(toupper(gatename), "\\.", "_", "g")
		execute "normal! i#ifndef " . gatename
		execute "normal! o#define " . gatename . ""
		execute "normal! Go#endif // " . gatename . ""
		normal! kk
	endfunction

	map <Leader>ih :call InsertIncludeGuard()<CR>

" ----------------------------------------
" Conque GDB
" ----------------------------------------

	let g:ConqueGdb_Leader = '<Leader>g'
	map <Leader>gU :call conque_gdb#command("up")<CR>
	map <Leader>gu :call conque_gdb#command("down")<CR>

	"function! DebugComponentTest(...)
		":ConqueGdb --args
		

	"command! -nargs=* DebugComponentTest call DebugComponentTest(<f-args)

" ----------------------------------------
" Eclim
" ----------------------------------------

	"nnoremap <silent> <buffer> <cr> :CSearchContext<cr>

" ----------------------------------------
" GUI configuration
" ----------------------------------------

	" m = Menubar
	" T = Toolbar
	" t = tearoff menus
	" a = autoselect 
	" A = -"- only for modeless
	" c = use console dialogs
	" f = foreground
	" g = Grey Menu Items
	" i = Icon
	" v = buttons are vertical
	" e = tabs in gui
	" This has to be set early
	" r = show right scroll bar
	" L = show left scrollbar on split
	" i = icon
	set guioptions=fatig
	set nonumber " enable line numbers
	"set relativenumber
	set showtabline=1
	set linespace=0 " Pixels of space between lines
	set lazyredraw
	set cmdheight=1
	set wildmenu

	" 0: Never show status line
	" 1: only show status line if there is more than 1 window
	" 2: always show status line
	set laststatus=2
	set statusline=%<%f\ %h%m%r%{fugitive#statusline()}
	
	set statusline+=%#warningmsg#
	set statusline+=%{SyntasticStatuslineFlag()}
	set statusline+=%*

	set statusline+=%=%-14.(%l,%c%V%)\ %P

	set previewheight=30

	" Open vertical split windows right
	"set splitright
	" Open horizontal split windows below
	"set splitbelow

	"set background=light
	"hi TooLong guibg=#ff0000 guifg=#f8f8f8

	" Good readable space-saving font for lcd/lvds that doesn't need antialising
	" but just makes good use of the pixels
	"set guifont=Terminus\ Bold\ 8
	"set guifont=ProggyCleanTT\ 12
	"set guifont=ProggyTinyTT\ 12
	"set guifont=montecarlo
	
	set nocursorline
	let g:cursorline=0

	set nocursorcolumn
	let g:cursorcolumn=0

" ----------------------------------------
" Text formatting
" ----------------------------------------

	" http://www.reddit.com/r/vim/comments/1yfdds/confused_about_cin_smartindent_autoindent_etc/
	filetype indent on
	set autoindent

	set cinoptions=l1
	"set cindent

	" Keep indentation for empty lines
	" source: http://www.mail-archive.com/vim@vim.org/msg06004.html
	":inoremap <Enter> <Enter><space><bs>
	":nnoremap o o<space><bs>

	set nolbr " lbr=wrap on word boundaries (for display-only-wrapping)
	set sm " Shortly jump to matching bracket

	set noexpandtab		" expandtab = <Tab> inserts spaces
	set tabstop=4			" :retab substitutes a tab with this many spaces (or vice versa)
	set shiftwidth=4	" Automatic indentation indents this many spaces
	set textwidth=78	" Line length before wrapping
	set softtabstop=0 " =sts Try to give user the feeling of using tabs although he/she

	" formatoptions:
	" c - autowrap COMMENTS using textwidth
	" r - insert comment leader (?) on <enter>
	" o - insert comment leader on 'o' or 'O'
	" q - gq formats comments (?)
	" n - recon numbered lists
	" v - wrap on blanks
	" t - autowrap TEXT using textwidth
	" l - do not break long lines
	"set formatoptions=croqnvt
	set formatoptions=croqvt

	" In contrast to default to not recognize numbers
	" followed by space as enumeration, I never write them
	" this way and it messes up normal text containing numbers
	"set formatlistpat="^\s*\d\+[\]:.)}\t ]\s*"
	set formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*"

	" Show beginning of last line of a window instead of '@' stuffs
	set display+=lastline

" ----------------------------------------
" Text display
" ----------------------------------------
	set wrap " If a line is too long for display, wrap it
	set so=4 " scrolloff (lines of context during scrolling)
	"set fdm=indent		" Fold by indentation
	set fdm=marker

	" Display <tab>s etc...
	" Some cool display variants for tabs (which will almost certainly break if
	" your gvim/terminal is not unicode-aware).
	" If you want to make your own I recommend look up the unicode table 2500 on
	" the web (or any other that includes your desired characters).
	" Inserting the unicode character 2500 is done by pressing: Ctrl-V Ctrl-U 2500
	
	set showbreak=↪\  " Character to precede line wraps
	set list
	set lcs=tab:\┊\ ,trail:•,extends:⇒,precedes:⇐,nbsp:&
	"set lcs=tab:\┊\ ,trail:•,extends:⇒,precedes:⇐,nbsp:&,eol:↲
	"set lcs=tab:┊\ ,trail:·,extends:⇒,precedes:⇐,nbsp:&
	"set lcs=tab:·\ ,trail:·,extends:>,precedes:<,nbsp:&
	"set lcs=tab:»\ ,trail:·,extends:>,precedes:<,nbsp:&
	"set lcs=tab:↦\ ,trail:·,extends:⇒,precedes:⇐,nbsp:&
	"set lcs=tab:│\ ,trail:·,extends:>,precedes:<,nbsp:&
	"set lcs=tab:│┈,trail:·,extends:>,precedes:<,nbsp:&
	"set lcs=tab:└─,trail:·,extends:>,precedes:<,nbsp:&
	"set lcs=tab:▹\ ,trail:·,extends:>,precedes:<,nbsp:&
	"set lcs=tab:▹\ ,trail:·,extends:⇒,precedes:⇐,nbsp:&

	set fillchars=vert:│

	set spelllang=de

	" source: http://stackoverflow.com/questions/18196399/exclude-capitlized-words-from-vim-spell-check
	"syn match myExCapitalWords +\<[A-Z]\w*\>+ contains=@NoSpell
	"syn match myExCapitalWords +\<\w*[A-Z]\K*\>+ contains=@NoSpell
	
	" Doesnt really work for me (for latex)
	let g:tex_comment_nospell=1




	set hls        " highlight search
	set ignorecase " ignore case when searching
	set smartcase  " ... except when search pattern contains an uppercase char

	" Source of the below:
	" http://vim.wikia.com/wiki/Search_across_multiple_lines
	"
	" Search for the ... arguments separated with whitespace (if no '!'),
	" or with non-word characters (if '!' added to command).
	function! SearchMultiLine(bang, ...)
		if a:0 > 0
			let sep = (a:bang) ? '\_W\+' : '\_s\+'
			let @/ = join(a:000, sep)
		endif
	endfunction
	command! -bang -nargs=* -complete=tag S call SearchMultiLine(<bang>0, <f-args>)|normal! /<C-R>/<CR>

" ----------------------------------------
" Running as vimpager?
" ----------------------------------------
"
	if &readonly
		set laststatus=1
		set ruler
		set cmdheight=1
		set nonumber
		set colorcolumn=
	endif

	if has("eval") && has("autocmd")
			fun! <SID>check_pager_mode()
					if exists("g:loaded_less") && g:loaded_less
							" we're in vimpager / less.sh / man mode
							set laststatus=0
							set ruler
							set foldmethod=manual
							set foldlevel=99
							set scrolloff=999
							set nolist
							set nonumber
					else
						" source: http://hanschen.org/2012/10/24/different-background-color-in-vim-past-80-columns/
						"execute "set colorcolumn=" . join(range(81,335), ',')
						"set colorcolumn=81,82,83
					endif
			endfun
			autocmd VimEnter * :call <SID>check_pager_mode()
	endif

" ----------------------------------------
" Syntax, Filetypes, Autocompletion
" ----------------------------------------

	syntax enable

	filetype on
	filetype plugin on

	set tags+=/home/henning/.vim/stl.tags
	set tags+=/home/henning/.vim/luabind.tags
	set tags+=/home/henning/.vim/SDL.tags
	set tags+=/home/henning/.vim/lua.tags

	set tags+=tags

	" Automatically close preview window when not needed anymore
	autocmd InsertLeave * call AutoClosePreviewWindow()
	autocmd CursorMovedI * call AutoClosePreviewWindow()

	" Highlight certain words in tex files
	autocmd FileType plaintex call MatchTechWordsToAvoid()
	autocmd BufWinEnter *.tex call MatchTechWordsToAvoid()
	autocmd InsertEnter *.tex call MatchTechWordsToAvoid()
	autocmd InsertLeave *.tex call MatchTechWordsToAvoid()
	autocmd FileType plaintex call MatchWarnLines()
	autocmd BufWinEnter *.tex call MatchWarnLines()
	autocmd InsertEnter *.tex call MatchWarnLines()
	autocmd InsertLeave *.tex call MatchWarnLines()
	autocmd BufWinLeave *.tex call clearmatches()

	autocmd FileType cpp call MatchPrints()
	autocmd BufWinEnter *.h call MatchPrints()
	autocmd InsertEnter *.h call MatchPrints()
	autocmd InsertLeave *.h call MatchPrints()
	autocmd BufWinLeave *.h call clearmatches()
	autocmd BufWinEnter *.cpp call MatchPrints()
	autocmd InsertEnter *.cpp call MatchPrints()
	autocmd InsertLeave *.cpp call MatchPrints()
	autocmd BufWinLeave *.cpp call clearmatches()

	autocmd BufEnter *.scala :set ft=scala

	" Enable/disable git gutter based on file type
	autocmd BufReadPre *.scala let g:gitgutter_enabled = 1
	autocmd BufReadPre *.h let g:gitgutter_enabled = 1
	autocmd BufReadPre *.cpp let g:gitgutter_enabled = 1
	autocmd BufReadPre *.cc let g:gitgutter_enabled = 1
	autocmd BufReadPre *.cxx let g:gitgutter_enabled = 1
	autocmd BufReadPre *.c let g:gitgutter_enabled = 1
	autocmd BufReadPre *.py let g:gitgutter_enabled = 1
	autocmd BufReadPre *.sh let g:gitgutter_enabled = 1
	autocmd BufReadPre *.tex let g:gitgutter_enabled = 1

	autocmd BufReadPre *.log let g:gitgutter_enabled = 0
	autocmd BufReadPre *.csv let g:gitgutter_enabled = 0

	" Set up indentation behavior per file type
	autocmd FileType python setlocal
				\ tabstop=4
				\ softtabstop=4
				\ shiftwidth=4
				\ textwidth=79
				\ expandtab
				\ autoindent
	
	" Set what is considered a keyword (e.g. for *, w, Ctrl-N, etc..)
	" disabled for now because it breaks syntax highlighting
	"autocmd FileType c setlocal iskeyword=a-z,A-Z,48-57,_,.,-,>
	"autocmd FileType cpp setlocal iskeyword=a-z,A-Z,48-57,_,.,-,>
	
	augroup cppsettings
		autocmd!

		" In normal mode (where we use 'dw', '*' etc...), do not count '>' etc...
		" as words, that breaks syntax highlighting
		"autocmd FileType c autocmd InsertLeave setlocal iskeyword=a-z,A-Z,48-57
		"autocmd FileType cpp autocmd InsertLeave setlocal iskeyword=a-z,A-Z,48-57

		" VIM default for non-windws systems:
		autocmd FileType c autocmd InsertLeave setlocal iskeyword=@,48-57,_,192-255
		autocmd FileType cpp autocmd InsertLeave setlocal iskeyword=@,48-57,_,192-255

		" In insert mode (for automcompletion), count longer things as words
		autocmd FileType c autocmd InsertEnter setlocal iskeyword=@,a-z,A-Z,48-57,_,.,-,>
		autocmd FileType cpp autocmd InsertEnter setlocal iskeyword=@,a-z,A-Z,48-57,_,.,-,>
	augroup END


	augroup latexsettings
		autocmd!
		
		" In normal mode (where we use 'dw', '*' etc...), do not count '.' and ':'
		" as words (as that would make deleting words in text annoying
		autocmd FileType tex autocmd InsertLeave <buffer> :set iskeyword=a-z,A-Z,48-57,_,-,>
		autocmd FileType plaintex autocmd InsertLeave <buffer> :set iskeyword=a-z,A-Z,48-57,_,-,>

		" In insert mode, add '.' and ':' as I often use things like 'fig:foo.bar' which
		" I want to be able to complete with i_CTRL-N
		autocmd FileType tex autocmd InsertEnter <buffer> :set iskeyword=a-z,A-Z,48-57,_,.,:,-,>
		autocmd FileType plaintex autocmd InsertEnter <buffer> :set iskeyword=a-z,A-Z,48-57,_,.,:,-,>
	augroup END

	augroup pulsecursor
		autocmd!
		autocmd FocusGained * call s:PulseCursorLine()
	augroup END

	set complete=.,w,b,u,t,i,kspell
	set completeopt=menuone,preview

" ------------------------------
" Opening Files / Paths
" ------------------------------

	set modeline
	set modelines=5

	set path=.,/usr/include

	" TODO: automagically set path to contain project folder (find using .git,.p4config, etc...)
	"set path+=/home/lhasemann/repos/git/navkit/dev-guidance
	"set path+=/home/lhasemann/repos/git/navkit/dev-guidance/Engines
	set path+=/home/lhasemann/repos/gitp4/navkit/dev-guidance
	set path+=/home/lhasemann/repos/gitp4/navkit/dev-guidance/Engines

	set wildignore+=Build/**,*/doxygen_output/*,*.so,*.swp,*.zip,*.rar,*.gz,*/.git/*,*/.svn/*


" ------------------------------
" Functinos
" ------------------------------

	" In gvim, cursorcolumn and autocompletion preview & menu don't work well
	" together (menu vanishes). This function can be used to toggle between
	" cursorcolumn and the completion preview so always only one of them is
	" activated.
	function! ToggleCursorColumn()
		if(g:cursorcolumn)
			set nocursorcolumn
			set completeopt=menuone,preview
			let g:cursorcolumn=0
		else
			set cursorcolumn
			set completeopt=menuone
			let g:cursorcolumn=1
		endif
		redraw
	endfunction

	function! ToggleCursorLine()
		if(g:cursorline)
			set nocursorline
			let g:cursorline=0
		else
			set cursorline
			let g:cursorline=1
		endif
		redraw
	endfunction

	" Source: https://github.com/airblade/dotvim/blob/dd5d7737e39aad5e24c1a4a8c0d115ff2ae7b488/vimrc#L294-L310
	function! s:PulseCursorLine()
		if(!g:cursorline)
			setlocal cursorline
			redraw
			sleep 100m

			setlocal nocursorline
			redraw
			sleep 100m

			setlocal cursorline
			redraw
			sleep 100m

			setlocal nocursorline
			redraw
			sleep 100m
		endif
	endfunction

	" Append modeline after last line in buffer.
	" Use substitute() instead of printf() to handle '%%s' modeline in LaTeX
	" files.
	" source: http://vim.wikia.com/wiki/Modeline_magic
	function! AppendModeline()
		if(&expandtab)
			let l:modeline = printf(" vim: set ts=%d sw=%d tw=%d expandtab :",
			\ &tabstop, &shiftwidth, &textwidth)
		else
			let l:modeline = printf(" vim: set ts=%d sw=%d tw=%d noexpandtab :",
			\ &tabstop, &shiftwidth, &textwidth)
		endif
		let l:modeline = substitute(&commentstring, "%s", l:modeline, "")
		call append(line("$"), l:modeline)
	endfunction

	function! LatexFold()
		set foldexpr=(getline(v:lnum)=~'^[^%]*\\\\[a-z]*\\(section\\\|paragraph\\\|chapter\\\|begin{figure}\\).*\\\|%.*-->.*$')?0:1
		set foldmethod=expr
		set foldenable
	endfunction

	"Load PDF to the page containing label
	"source: http://vim.wikia.com/wiki/Open_pdf_to_the_current_location_in_a_LaTeX_file
	function! LoadEvinceByLabel(l)
		for f in split(glob("*.aux"))
			let label = system('grep "^.newlabel{' . a:l . '" ' . f)
			let page = matchstr(label, '.\{}{\zs.*\ze}}')
			if empty(page)
				" hyperref has a different form, try tihs
				let page = matchstr(label, 'newlabel{.*}{{.*}{\zs.*\ze}{.*}{.*}{.*}}')
			endif
			if ! empty(page)
				call OpenPDF(substitute(f, "aux$", "pdf", ""), page)
				return
			endif
		endfor
	endfunction

	"Load PDF to the page containing the nearest previous label to the cursor
	function! EvinceNearestLabel()
		let line = search("\\label{", "bnW")
		if line > 0
			let m = matchstr(getline(line), '\\label{\zs[^}]*\ze}')
			if empty(m)
				echomsg "No label between here and start of file"
			else
				call LoadEvinceByLabel(m)
			endif
		endif
	endfunction

	function! OpenPDF(file,page)
		exec 'silent ! evince --page-label=' . a:page . ' ' . a:file . ' > /dev/null 2>&1 &'
	endfunction


	" Highlight words to avoid in tech writing
	" =======================================
	" obviously, basically, simply, of course, clearly,
	" just, everyone knows, However, So, easy
	" http://css-tricks.com/words-avoid-educational-writing/
	"
	" source: http://usevim.com/2014/01/17/words-to-avoid/

	function! MatchTechWordsToAvoid()
		highlight TechWordsToAvoid ctermbg=red ctermfg=white guifg=#ffffff guibg=#a00000
		
		" Some phrases/words to avoid, common probable mistakes (that are not
		" technically spelling errors)
		" or other thinks I like to have specially highlighted
		match TechWordsToAvoid /\c\<\(e\.g\.[^,]\|i\.e\.[^,]\|cheap\|simple\|obviously\|basically\|simply\|of\scourse\|clearly\|just\|however\|so,\|easy\)\>/
	endfunction

	function! MatchWarnLines()
		highlight WarnLines ctermbg=red ctermfg=white  guibg=#602010
		
		" Some phrases/words to avoid, common probable mistakes (that are not
		" technically spelling errors)
		" or other thinks I like to have specially highlighted
		match WarnLines /\c.*\<\(xxx\|todo\)\>.*/
	endfunction

	function! MatchPrints()
		highlight Print ctermbg=green ctermfg=white guifg=#ffffff guibg=#206000
		match Print /\c\<\(printf\|debug\|debug_state\|print_state\|debug_buffer\|debug_->debug\|DBG\|print\|cout\|cerr\)\>/
	endfunction

	function! AutoClosePreviewWindow()
		if !&l:previewwindow
			pclose
		endif
	endfunction

	let g:rainbow_on = 0
	function! ToggleRainbow()
		if(g:rainbow_on)
			colorscheme calculon
			let g:rainbow_on = 0
		else
			call niji#highlight()
			let g:rainbow_on = 1
		endif
	endfunction


" ------------------------------
" Colors
" ------------------------------

	let base16colorspace=256  " Access colors present in 256 colorspace

	" Use desert for console vim, the gvim color theme is selected in .gvimrc
	"colorscheme desert

	set background=dark
	let g:solarized_termcolors=16
	let g:solarized_contrast="normal"
	let g:solarized_bold=1
	let g:solarized_italic=1
	let g:solarized_underline=1
	"colorscheme solarized
	"colorscheme base16-default
	colorscheme droggl-base16-default
	"colorscheme calculon

	syn match myExCapitalWords +\<\w*[A-Z]\S*\>+ contains=@NoSpell
	syn match myExNonWords +\<\p*[^A-Za-z \t]\p*\>+ contains=@NoSpell


	set guifont=Gohu\ Gohufont\ 8,gohufont\ 8,Menlo\ Regular:h9

" vim: set ts=4 sw=4 tw=78 noexpandtab :

