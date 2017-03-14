""" macos vs linux clipboard
set autoread
if has("mac")
  set clipboard+=unnamed
else
  set clipboard=unnamedplus
endif

set nu

set nocompatible
filetype off

""" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"""" Theme
Plugin 'flazz/vim-colorschemes'
"Plugin 'tyrannicaltoucan/vim-quantum'
Plugin 'KeitaNakamura/neodark.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'lifepillar/vim-solarized8'
Plugin 'vim-airline/vim-airline-themes' "Theme for vimairline

"""" utilities
Plugin 'gmarik/Vundle.vim' "Plugin manager
Plugin 'vim-airline/vim-airline' "Vim status
Plugin 'xolox/vim-session' "Session management, SaveSession, OpenSession, CloseSession
Plugin 'scrooloose/nerdtree' "Directory explorer
Plugin 'Yggdroot/indentLine' "Showing same level indentation with a vertical line
Plugin 'scrooloose/syntastic' "Syntax checking
Plugin 'kien/ctrlp.vim' "Fuzzy file search
Plugin 'ervandew/supertab' "Using tab for ins-completion
Plugin 'majutsushi/tagbar' " Display tags <F6>
Plugin 'xolox/vim-misc' "Used for easytags
Plugin 'xolox/vim-easytags' "Update tags
Plugin 'christoomey/vim-run-interactive' "Run interactive command <leader>ri
Plugin 'szw/vim-maximizer' "Maximize window <F3>
Plugin 'vim-scripts/taglist.vim'
Plugin 'dkprice/vim-easygrep'

"""" Vim notes
Plugin 'vimwiki/vimwiki'
"Plugin 'jceb/vim-orgmode'
Plugin 'tpope/vim-speeddating' "Increase, decrease number, time
"Plugin 'dhruvasagar/vim-dotoo'
Plugin 'chrisbra/NrrwRgn' "Narrow Region, editing a portion of a file
Plugin 'mattn/calendar-vim'
Plugin 'vim-scripts/SyntaxRange'
Plugin 'vim-scripts/utl.vim' "Open url
Plugin 'Rykka/riv.vim'

"""" Moving
Plugin 'easymotion/vim-easymotion' "Easy moving between line
Plugin 'jeffkreeftmeijer/vim-numbertoggle' "Toogle line number <F2>
Plugin 'rhysd/clever-f.vim' "Using f or F to continue searching

"""" Editing
Plugin 'sjl/gundo.vim'
Plugin 'godlygeek/tabular' "Tabularize text
Plugin 'tpope/vim-surround' "Surrounding with brackets
Plugin 'tpope/vim-repeat' "Allow to use . to repeat vim-surround
Plugin 'jiangmiao/auto-pairs' "Auto insert closing bracket
Plugin 'scrooloose/nerdcommenter' "Commenting

Plugin 'mtth/scratch.vim'  "Taking note

"""" Git plugins
Plugin 'airblade/vim-gitgutter' "Show git status at left gutter
Plugin 'tpope/vim-fugitive' "Git command line in vim
Plugin 'Xuyuanp/nerdtree-git-plugin' "Git for nerdtree
"Plugin 'peterhurford/send.vim'

"""" Vim snippets
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets' "snippets for ultinips
Plugin 'SirVer/ultisnips' "using snippets

"""" Syntax highlight improvements
Plugin 'dragfire/Improved-Syntax-Highlighting-Vim'

"""" Tmux
Plugin 'benmills/vimux' "Communicate with tmux
Plugin 'christoomey/vim-tmux-navigator' "Enable moving between tmux - vim seamlessly
Plugin 'tmux-plugins/vim-tmux-focus-events' "Re-enable FocusGained & FocusLost for vim in tmux
Plugin 'tmux-plugins/vim-tmux' " .tmux.conf syntax

"Focus vim
"Plugin 'junegunn/goyo.vim'

"""" Python
Plugin 'klen/python-mode'
Plugin 'pitluga/vimux-nose-test' "Running nose in tmux
Plugin 'davidhalter/jedi-vim' "Auto completion
Plugin 'slim-template/vim-slim.git'
Plugin 'vim-scripts/django.vim' "Django html syntax filetype htmldjango
Plugin 'jmcomets/vim-pony' "Quickly jump between Django files
Plugin 'fs111/pydoc.vim' "Integrate python documents to vim
Plugin 'vim-scripts/python_match.vim' "Jumping between if/else try/catch for/while using %
Plugin 'heavenshell/vim-pydocstring'
"Plugin 'tmhedberg/matchit'

"""" Java
"Plugin 'adragomir/javacomplete' "Java completion
Plugin 'tfnico/vim-gradle'
Plugin 'tpope/vim-dispatch' "Dispatch make command

"""" Markdown
"Plugin 'tpope/vim-markdown'
Plugin 'plasticboy/vim-markdown'
Plugin 'nelstrom/vim-markdown-folding'

"Bash writing
"Plugin 'vim-scripts/bash-support.vim'
"

"""" Blueprint
Plugin 'kylef/apiblueprint.vim'

".tmux.conf
"Plugin 'tmux-plugins/vim-tmux'
call vundle#end()

""" Vim airline
"Fix error: vim-airline - Display even with ONLY 1 window
set laststatus=2
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

"""  NERDTree
"Toggle NERDTree
"noremap <C-n> :NERDTree<CR>


""" PYTHON-MODE
" Deacctivate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator
" modes)
" ]]            Jump on next class or function (normal, visual, operator
" modes)
" [M            Jump on previous class or method (normal, visual, operator
" modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 1
let g:pymode_rope_autoimport = 1
let g:pymode_rope_regenerate_on_write = 0
let g:pymode_rope_autoimport_modules = ['os', 'shutil', 'functools', 'itertools']
let g:pymode_rope_autoimport_import_after_complete = 0

" Documentation
let g:pymode_doc = 0
"let g:pymode_doc_key = 'K'

"Syntax checking
let g:pymode_python = 'python3' 
"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

let g:pymode_lint_todo_symbol = 'TD'
let g:pymode_lint_comment_symbol = 'CC'
let g:pymode_lint_visual_symbol = 'RR'
let g:pymode_lint_error_symbol = 'EE'
let g:pymode_lint_info_symbol = 'II'
let g:pymode_lint_pyflakes_symbol = 'FF'


" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 1

"Autorun binding
let g:pymode_run_bind = '<leader><leader>a'

" Jedi - automatically starts the completion
"let g:jedi#popup_on_dot = 1

"Jedi - show call signature
let g:jedi#show_call_signatures = 1

"""Config vim to always follow symlink
command! FollowSymlink call followsymlinks#FollowSymlink()
command! ProjectRoot call projectroot#SetProjectRoot()

"if ! exists("autocommands_loaded")
    "let autocommands_loaded = 1
"autocmd! BufRead * execute ':FollowSymlink' | execute ':ProjectRoot' 
"autocmd! BufRead * execute ':ProjectRoot'
"endif

filetype plugin indent on
syntax on
let mapleader = ','


""" Replaced. Tmux-navigator Moving between spanes smoothly
"let g:BASH_Ctrl_j = 'off' "Turn this on to avoid conflict with bash_support
"noremap <C-j> <C-w><C-j>
"noremap <C-k> <C-w><C-k>
"noremap <C-l> <C-w><C-l>
"noremap <C-h> <C-w><C-h>
"noremap <C-\> <C-w><C-\\>

"Moving from vim to tmux
let g:tmux_navigator_no_mappings = 1

noremap <silent> <C-h> :TmuxNavigateLeft<cr>
noremap <silent> <C-j> :TmuxNavigateDown<cr>
noremap <silent> <C-k> :TmuxNavigateUp<cr>
noremap <silent> <C-l> :TmuxNavigateRight<cr>
noremap <silent> <C-\\> :TmuxNavigatePrevious<cr>


""" MISCELLANEOUS
"Use <leader>l to toggle display of whitespace
nnoremap <leader>l :set list!<CR>

"set backspace for easy use
set backspace=indent,eol,start

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line 
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

""" ----- scrooloose/syntastic settings -----
" Default for SYNTACTIC plugin - python
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"syntastic symbols
let g:syntastic_error_symbol = 'EE'
let g:syntastic_warning_symbol = "WW"
let g:syntastic_style_error_symbol = 'SE'
let g:syntastic_style_warning_symbol = "SW"

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


""" CtrlP
"Default mapping for CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'c'


"""Configuration for javacomplete
"
"autocmd Filetype java setlocal omnifunc=javacomplete#Complete
"autocmd Filetype java map <leader>b: call javacomplete#GoToDefinition()<CR>


"""Scratch
"autohide
let g:scratch_autohide = 1


"""VIMUX shortcut
"
"Running python test
noremap <Leader>rt :call VimuxRunCommand("python -m unittest " . bufname("%"))<CR>

" Prompt for a command to run
 noremap <Leader>vp :VimuxPromptCommand<CR>

 " Run last command executed by VimuxRunCommand
noremap <Leader>vl :VimuxRunLastCommand<CR>

" Interrupt any command running in the runner pane map
noremap <Leader>vi :VimuxInterruptRunner<CR>

 """Toogle Relative Number between Absolute Line Number
let g:UseNumberToggleTrigger = 1 
let g:NumberToggleTrigger="<F2>"


"""Shortcut for RunInteractiveShel
nnoremap <leader>ri :RunInInteractiveShell<space>


"""Trigger ultisnips
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsSnippetsDir = "~/.vim/mysnippets"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "mysnippets"]
let g:UltiSnipsEditSplit = 'normal'

"""Buffer mapping
noremap <F7> :bprev<CR>
noremap <F9> :bnext<CR>
noremap <F8> :buffers<CR>

"""Command 
command! -nargs=1 Wc  | execute ':Gwrite'
                    \ | execute ':Gcommit -m '.<q-args> 
                    \ | execute ':redraw!'

command! -nargs=1 Wcp  | execute ':Gwrite'
                    \ | execute ':Gcommit -m '.<q-args> 
                    \ | execute ':Gpush' 
                    \ | execute ':redraw!'

command! -nargs=1 Dwc  | silent! execute '!cd ~/dotfiles && git add . && git commit -m '.<q-args>
                    \  | execute ':redraw!'

command! -nargs=1 Dwcp | silent! execute '!cd ~/dotfiles && git add . && git commit -m '.<q-args>
                    \  | execute '!cd ~/dotfiles && git push '
                    \  | execute ':redraw!'

command! -nargs=0 Dwp  | silent! execute '!cd ~/dotfiles && git push '
                    \  | execute ':redraw!'


"frequent typo or useful commands
command! -nargs=0 W :w
command! -nargs=0 S :source % 


command! -nargs=1 Silent
\ | execute ':silent! execute '.<q-args>
\ | execute ':redraw!'

"Experimenting with hook
"Auto commit and push config files, silent, .tmux
autocmd! BufWritePost ~/.*rc silent execute 
            \ '!echo "\n CONFIG file. Remember to PUSH to GITHUB" && sleep 1 '
            \ | execute ":redraw!"

autocmd! BufWritePost ~/*.conf silent execute 
            \ '!echo "\n CONFIG file. Remember to PUSH to GITHUB" && sleep 1 '
            \ | execute ":redraw!"

autocmd! BufWritePost ~/dotfiles/** silent execute 
            \ '!echo "\n CONFIG file. Remember to PUSH to GITHUB" && sleep 1 '
            \ | execute ":redraw!"

autocmd! BufWritePost *.wiki silent execute
            \ '!echo "\nRemember to PUSH to GITHUB" && sleep 1'
            \ | execute ":redraw!"


""" easymotion
" Gif config
map  <leader>/ <Plug>(easymotion-sn)
omap <leader>/ <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  <leader>n <Plug>(easymotion-next)
map  <leader>N <Plug>(easymotion-prev)

""" vimwiki
let wiki_1 = {}
let wiki_1.path = "~/vimwiki"
let wiki_1.syntax = 'markdown' 
let wiki_1.ext = '.md'
let wiki_1.nested_syntaxes = { 'python': 'python', 'java': 'java' } 

let wiki_2 = {}
let wiki_2.path = "~/notes"
let wiki_2.syntax = 'markdown' 
let wiki_2.ext = '.md'
let wiki_2.nested_syntaxes = { 'python': 'python', 'java': 'java' } 

let g:vimwiki_list = [ wiki_1, wiki_2 ]
let g:vimwiki_folding = 'expr'

"command! SetVimwikiFiletype call setvimwikifiletype#SetFiletype()
"autocmd! Filetype vimwiki execute ':SetVimwikiFiletype'
"autocmd! BufEnter *.md execute '!echo "Set Foldmethod"' | execute ':set foldmethod=expr'
"
"

""" vim-markdown config
let g:vim_markdown_folding_disabled = 0
let g:vim_markdown_fenced_languages = ['c++=cpp', 'python=python', 'java=java'] "syntax highlighting in fenced code
let g:vim_markdown_conceal = 0
let g:vim_markdown_folding_style_pythonic = 1


"""Vim-maximizer
let g:maximizer_set_default_mapping = 1 "Turn on default mapping key <F3>.

"vim-easytags
let g:easytags_dynamic_files = 2 "Trying to create tags file in current directory
let g:easytags_auto_update = 0 "Disable automatic update
autocmd Filetype python let b:easytags_events = ["BufWritePost"]
"let g:easytags_events = ['BufWritePost'] "Trying to generate tags when write
let g:easytags_include_members = 1
set cpoptions+=d
nmap <leader>ut :UpdateTags<CR>

"""vim-session
"session management
let g:session_directory = "~/.vim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1
nnoremap <leader>so :OpenSession 
nnoremap <leader>ss :SaveSession 
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>



"""Setting vim colorscheme
"set Vim-specific sequences for RGB colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set t_Co=256
let g:neodark#terminal_transparent = 0
let g:neodark#background           = 'brown'
colorscheme neodark

"set background=dark
"let g:solarized_visibility = "high"
"let g:solarized_contrast   = "high"
"let g:solarized_termcolors = 16
"let g:solarized_termtrans  = 1
"colorscheme solarized
"colorscheme solarized8_dark

if !exists("termguicolors")
    set termguicolors
endif

" enable mouse
set mouse=a

" show trailing whitespaces
set list
"set listchars=tab:▸\ ,trail:¬,nbsp:.,extends:❯,precedes:❮
augroup ListChars2
    au!
    autocmd filetype go set listchars+=tab:\ \ 
    autocmd ColorScheme * hi! link SpecialKey Normal
augroup END

""" togglables without FN keys
let g:gundo_prefer_python3 = 1
nnoremap <leader>1 :GundoToggle<CR>
set pastetoggle=<leader>2
nnoremap <leader>3 :NERDTreeToggle<CR>
nnoremap <leader>4 :TlistToggle<CR>
nnoremap <leader>5 :TagbarToggle<CR>

" persist (g)undo tree between sessions
set undofile
set history=100
set undolevels=100

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv


"""Delete buffer
nnoremap <leader>bd :$bd<CR>
nnoremap <leader><leader>bd :bd<cr>

""" airline
if !exists("g:airline_symbols")
  let g:airline_symbols = {}
endif
let g:airline_theme="powerlineish"
let g:airline_powerline_fonts=1
let g:airline#extensions#branch#empty_message  =  "no .git"
let g:airline#extensions#whitespace#enabled    =  1 "Enable detection of whitespace error.
let g:airline#extensions#syntastic#enabled     =  1 "Enable syntastic integration
let g:airline#extensions#tagbar#enabled        =  1 "Enable tagbar integration
let g:airline#extensions#tabline#enabled       =  1 "Enable tabline
let g:airline#extensions#tabline#tab_nr_type   =  1 " enable/disable displaying tab number in tabs mode.
"let g:airline#extensions#tabline#fnamemod      = ':.' "Reduce filename relative to current directory
let g:airline#extensions#tabline#fnamecollapse =  0 " collapsing parent directories in buffer name
let g:airline#extensions#hunks#non_zero_only   =  1 " git gutter

let g:SuperTabDefaultCompletionType = 'context'
let g:EclimCompletionMethod = 'omnifunc'
let g:EclimJavaCompleteCaseSensitive = 1


"let g:org_agenda_files = [ '~/org/index.org', '~/org/personal.org' ]

""" Command to move quickly to config files
command! Ev :e ~/.vimrc
command! Et :e ~/.tmux.conf
command! Ez :e ~/.zshrc

let g:AutoPairsMapCh=0

""" Tmux Navigation
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <ctrl-\> :TmuxNavigatePrevious<cr>
"Fixing nvim <c-h> recognized as <BS>
if has("nvim")
    nmap <BS> :<C-u>TmuxNavigateLeft<CR>
endif

"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

"""Snippets info
let g:snips_author="Trang Tran Thi Thuy"
let g:snips_email="thuytranga1@gmail.com"
let g:snips_github="https://github.com/trangttt"

"""Pydoc
let g:pydoc_cmd='python -m pydoc'

if strftime("%H") < 18 
    colors solarized8_light_high
else
    colors neodark
endif

"" vim:fdm=expr:fdl=0
"" vim:fde=getline(v\:lnum)=~'^""'?'>'.(matchend(getline(v\:lnum),'""*')-2)\:'='

"""Pydocstring
nmap <silent> <leader>id <Plug>(pydocstring)


""" BluePrint
"autocmd Filetype apiblueprint setlocal foldmethod=syntax
