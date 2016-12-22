" macos vs linux clipboard
if has("mac")
  set clipboard+=unnamed
else
  set clipboard=unnamedplus
endif

set nu

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"Theme
Plugin 'flazz/vim-colorschemes'
"Plugin 'tyrannicaltoucan/vim-quantum'
Plugin 'KeitaNakamura/neodark.vim'

"utilities
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
Plugin 'vimwiki/vimwiki'
Plugin 'vim-scripts/taglist.vim'

"Moving
Plugin 'easymotion/vim-easymotion' "Easy moving between line 
Plugin 'jeffkreeftmeijer/vim-numbertoggle' "Toogle line number <F2>
Plugin 'rhysd/clever-f.vim' "Using f or F to continue searching

"Editing
Plugin 'sjl/gundo.vim'
Plugin 'godlygeek/tabular' "Tabularize text
Plugin 'tpope/vim-surround' "Surrounding with brackets
Plugin 'tpope/vim-repeat' "Allow to use . to repeat vim-surround
Plugin 'jiangmiao/auto-pairs' "Auto insert closing bracket
Plugin 'scrooloose/nerdcommenter' "Commenting

Plugin 'mtth/scratch.vim'  "Taking note

"Git plugins
Plugin 'airblade/vim-gitgutter' "Show git status at left gutter
Plugin 'tpope/vim-fugitive' "Git command line in vim
Plugin 'Xuyuanp/nerdtree-git-plugin' "Git for nerdtree
"Plugin 'peterhurford/send.vim'

"Vim snippets
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets' "snippets for ultinips
Plugin 'SirVer/ultisnips' "using snippets

"Syntax highlight improvements
Plugin 'dragfire/Improved-Syntax-Highlighting-Vim'

"Tmux
Plugin 'benmills/vimux' "Communicate with tmux
Plugin 'christoomey/vim-tmux-navigator' "Enable moving between tmux - vim seamlessly
Plugin 'tmux-plugins/vim-tmux-focus-events' "Re-enable FocusGained & FocusLost for vim in tmux
Plugin 'tmux-plugins/vim-tmux' " .tmux.conf syntax

"Focus vim
"Plugin 'junegunn/goyo.vim'

"Python
Plugin 'klen/python-mode'
Plugin 'pitluga/vimux-nose-test' "Running nose in tmux
Plugin 'davidhalter/jedi-vim' "Auto completion
Plugin 'slim-template/vim-slim.git'

"Java
"Plugin 'adragomir/javacomplete' "Java completion
Plugin 'tfnico/vim-gradle'

"Markdown
"Plugin 'tpope/vim-markdown'
Plugin 'plasticboy/vim-markdown'
Plugin 'nelstrom/vim-markdown-folding'

"Bash writing
"Plugin 'vim-scripts/bash-support.vim'

".tmux.conf
"Plugin 'tmux-plugins/vim-tmux'
call vundle#end()

"Fix error: vim-airline - Display even with ONLY 1 window
set laststatus=2
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

"Toggle NERDTree
noremap <C-n> :NERDTree<CR>


" PYTHON-MODE
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
let g:pymode_rope = 0

" Documentation
"let g:pymode_doc = 1
"let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

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
let g:jedi#popup_on_dot = 1

"Jedi - show call signature
let g:jedi#show_call_signatures = 1

"Config vim to always follow symlink
command! FollowSymlink call followsymlinks#FollowSymlink()
command! ProjectRoot call projectroot#SetProjectRoot()

"if ! exists("autocommands_loaded")
    "let autocommands_loaded = 1
autocmd! BufRead * execute ':FollowSymlink' | execute ':ProjectRoot' 
"autocmd! BufRead * execute ':ProjectRoot'
"endif 

filetype plugin indent on
syntax on
"color evening
let mapleader = ','


"Moving between spanes smoothly
"let g:BASH_Ctrl_j = 'off' "Turn this on to avoid conflict with bash_support
noremap <C-j> <C-w><C-j>
noremap <C-k> <C-w><C-k>
noremap <C-l> <C-w><C-l>
noremap <C-h> <C-w><C-h>
noremap <C-\> <C-w><C-\\>

"Moving from vim to tmux
let g:tmux_navigator_no_mappings = 1

noremap <silent> <C-h> :TmuxNavigateLeft<cr>
noremap <silent> <C-j> :TmuxNavigateDown<cr>
noremap <silent> <C-k> :TmuxNavigateUp<cr>
noremap <silent> <C-l> :TmuxNavigateRight<cr>
noremap <silent> <C-\\> :TmuxNavigatePrevious<cr>


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

" Default for SYNTACTIC plugin - python
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Default mapping for CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'c'


"Configuration for javacomplete
"
"autocmd Filetype java setlocal omnifunc=javacomplete#Complete
"autocmd Filetype java map <leader>b: call javacomplete#GoToDefinition()<CR>

"tagbar
"Configuration for tagbar
nnoremap <F6> :TagbarToggle<CR>

"Scratch
"autohide
let g:scratch_autohide = 1


""""""""""""""
"VIMUX shortcut
"""""""""""""""
"
"Running python test
noremap <Leader>rt :call VimuxRunCommand("python -m unittest " . bufname("%"))<CR>

" Prompt for a command to run
 noremap <Leader>vp :VimuxPromptCommand<CR>

 " Run last command executed by VimuxRunCommand
"noremap <Leader>vl :VimuxRunLastCommand<CR>

" Interrupt any command running in the runner pane map
noremap <Leader>vi :VimuxInterruptRunner<CR>

"""""""""""""""""""
 "Toogle Relative Number between Absolute Line Number
let g:UseNumberToggleTrigger = 1 
let g:NumberToggleTrigger="<F2>"


"""""""Shortcut for RunInteractiveShel""""""
nnoremap <leader>ri :RunInInteractiveShell<space>


""Trigger ultisnips"""""
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


"Buffer mapping
noremap <F7> :bprev<CR>
noremap <F9> :bnext<CR>
noremap <F8> :buffers<CR>

"Command 
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


"""easymotion
" Gif config
map  <leader>/ <Plug>(easymotion-sn)
omap <leader>/ <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  <leader>n <Plug>(easymotion-next)
map  <leader>N <Plug>(easymotion-prev)

"vimwiki
let wiki_1 = {}
let wiki_1.path = "~/vimwiki"
let wiki_1.syntax = 'markdown' 
let wiki_1.ext = '.md'
"let wiki_1.nested_syntaxes = { 'python': 'python', 'java': 'java' } 

let wiki_2 = {}
let wiki_2.path = "~/notes"
let wiki_2.syntax = 'markdown' 
let wiki_2.ext = '.md'

let g:vimwiki_list = [ wiki_1, wiki_2 ]
let g:vimwiki_folding = 'expr'

"command! SetVimwikiFiletype call setvimwikifiletype#SetFiletype()
"autocmd! Filetype vimwiki execute ':SetVimwikiFiletype'
"autocmd! BufEnter *.md execute '!echo "Set Foldmethod"' | execute ':set foldmethod=expr'
"
"
"vim-markdown config
let g:vim_markdown_folding_disabled = 0
let g:vim_markdown_fenced_languages = ['c++=cpp', 'python=python', 'java=java'] "syntax highlighting in fenced code
let g:vim_markdown_conceal = 0

"Vim-maximizer
let g:maximizer_set_default_mapping = 1 "Turn on default mapping key <F3>.

"vim-easytags
let g:easytags_dynamic_files = 2 "Trying to create tags file in current directory
let g:easytags_auto_update = 0 "Disable automatic update
autocmd Filetype python let b:easytags_events = ["BufWritePost"]
"let g:easytags_events = ['BufWritePost'] "Trying to generate tags when write
let g:easytags_include_members = 1
set cpoptions+=d
nmap <leader>ut :UpdateTags<CR>

"vim-session
"session management
let g:session_directory = "~/.vim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1
nnoremap <leader>so :OpenSession 
nnoremap <leader>ss :SaveSession 
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>



"Setting vim colorscheme
" set Vim-specific sequences for RGB colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

let g:neodark#background='gray'
colorscheme neodark
if !exists("termguicolors")
    set termguicolors
endif

" enable mouse
set mouse=a

" show trailing whitespaces
set list
set listchars=tab:▸\ ,trail:¬,nbsp:.,extends:❯,precedes:❮
augroup ListChars2
    au!
    autocmd filetype go set listchars+=tab:\ \ 
    autocmd ColorScheme * hi! link SpecialKey Normal
augroup END

" togglables without FN keys
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


" airline
if !exists("g:airline_symbols")
  let g:airline_symbols = {}
endif
let g:airline_theme="powerlineish"
let g:airline_powerline_fonts=1
let g:airline#extensions#branch#empty_message  =  "no .git"
let g:airline#extensions#whitespace#enabled    =  0
let g:airline#extensions#syntastic#enabled     =  1
let g:airline#extensions#tabline#enabled       =  1
let g:airline#extensions#tabline#tab_nr_type   =  1 " tab number
let g:airline#extensions#tabline#fnamecollapse =  1 " /a/m/model.rb
let g:airline#extensions#hunks#non_zero_only   =  0 " git gutter
