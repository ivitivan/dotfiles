" Vundle settings
set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.config/nvim/plugins')
Plug 'pangloss/vim-javascript'
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
"Plug 'https://github.com/Valloric/YouCompleteMe'
Plug 'https://github.com/marijnh/tern_for_vim'
Plug 'https://github.com/SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'https://github.com/scrooloose/nerdcommenter'
Plug 'https://github.com/mxw/vim-jsx'
Plug 'https://github.com/easymotion/vim-easymotion'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/Raimondi/delimitMate'
" Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/machakann/vim-sandwich'
Plug 'https://github.com/vim-scripts/Vim-R-plugin'
Plug 'https://github.com/tpope/vim-abolish'
Plug 'https://github.com/severin-lemaignan/vim-minimap'
Plug 'https://github.com/majutsushi/tagbar'
Plug 'https://github.com/mileszs/ack.vim'
Plug 'https://github.com/rking/ag.vim'
Plug 'https://github.com/neomake/neomake'
Plug 'https://github.com/grassdog/tagman.vim'
Plug 'https://github.com/wavded/vim-stylus'
Plug 'https://github.com/vim-scripts/JavaScript-Indent'
Plug 'https://github.com/KabbAmine/vCoolor.vim'
Plug 'https://github.com/groenewege/vim-less'
Plug 'https://github.com/embear/vim-localvimrc'
Plug 'metakirby5/codi.vim'
Plug 'https://github.com/tpope/vim-unimpaired'
Plug 'https://github.com/tpope/vim-vinegar'
Plug 'https://github.com/chrisbra/Colorizer'
Plug 'https://github.com/HerringtonDarkholme/yats.vim'
Plug 'https://github.com/severin-lemaignan/vim-minimap'
Plug 'https://github.com/hail2u/vim-css3-syntax'
Plug 'sbdchd/neoformat'
Plug 'https://github.com/vim-scripts/dbext.vim'
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'https://github.com/lambdalisue/lista.nvim'
Plug 'https://github.com/lambdalisue/vim-rplugin'
Plug 'https://github.com/bradford-smith94/quick-scope'
Plug 'https://github.com/machakann/vim-highlightedyank'
Plug 'https://github.com/vim-scripts/ReplaceWithRegister'
Plug 'https://github.com/yuttie/comfortable-motion.vim'
Plug 'https://github.com/moll/vim-node'
Plug 'https://github.com/lfilho/cosco.vim'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
let g:deoplete#file#enable_buffer_path = 1
let g:deoplete#enable_smart_case = 1

call plug#end()

" UltiSnips settings
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsSnippetsDir="~/.config/nvim/UltiSnips"
"let g:UltiSnipsJumpBackwardTrigger="<c-h>"

" Ctrl p Settings
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -s -l --nocolor -g ""'
endif
let g:ctrlp_use_caching = 0

" YouCompleteMe Settings
let g:ycm_add_preview_to_completeopt=0
let g:ycm_autoclose_preview_window_after_completion=1

" Vim-jsx Settings
let g:jsx_ext_required = 0

" Cosco settings
autocmd FileType javascript,css nnoremap <silent> <Leader>; :call cosco#commaOrSemiColon()<CR>
autocmd FileType javascript,css inoremap <silent> <Leader>; <c-o>:call cosco#commaOrSemiColon()<CR>

" Make paste and copy work
"set clipboard+=unnamed
set clipboard+=unnamedplus

" Define colorsheme and appearance
"let base16colorspace="256"
"let g:base16_shell_path="~/.config/base16-shell"
let base16colorspace="256"
set t_Co=256

if $BACKGROUND == 'dark'
  set background=dark
  colorscheme base16-atelier-dune
else
  set background=light
  colorscheme base16-atelier-dune.light
endif

filetype plugin on
syntax on
set number
" to display background properly inside tmux
set t_ut=
" Start and end characters for comments
set t_ZH=[3m " enable italics
set t_ZR=[23m " enable italics
" Italics in comments
highlight Comment cterm=italic
" Show the current line and column numbers
set ruler
" VertSplit color
"hi VertSplit ctermfg=7 ctermbg=7 gui=reverse
" Minimap plugin highlight color
let g:minimap_highlight='LineNr'
" GUI
set guifont=Ubuntu\ Mono\ 14

" Tab settings
set tabstop=2
set shiftwidth=2
set expandtab
set listchars=eol:⏎,tab:>>,trail:~,extends:>,precedes:<
set list

" Backspace
set backspace=2

" Edit workflow
" Let vim switch between files without annoying saving message
set hidden
" Undo
set undofile
" Disable autocomments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Key bindings
" Open vimrc
nmap <Leader>v :e ~/.vimrc<cr>
" execute "set <M-n>=\en"
nnoremap <M-n> :bnext<CR>
" execute "set <M-p>=\ep"
nnoremap <M-p> :bprevious<CR>

" Search the word on the Internet under cursor
nmap <Leader>s :silent !google-chrome 'https://google.com/\#q=<C-R><C-W>'<CR><C-L>

" 80 characters
highlight OverLength term=underline cterm=underline
augroup highlight80
  autocmd!
  autocmd FileType * match none
  autocmd FileType javascript.jsx match OverLength /\%81v.\+/
augroup END

" scrolloff
set scrolloff=5

highlight MatchParen ctermbg=9 term=bold ctermfg=none

" copy filename to clipboard
noremap <silent> <F4> :let @+=expand("%:p")<CR>

set incsearch

"if !exists('g:airline_symbols')
  "let g:airline_symbols = {}
"endif
"let g:airline_symbols.space = "\ua0"

nmap ,cs :let @+=expand("%")<CR>
let g:localvimrc_ask=0

"Open Gdiff in vertical mode
set diffopt+=vertical

" Show status line
set laststatus=2
" Show full name in statusline
set statusline+=%F

" Remove header in explorer
let g:netrw_banner=0

cmap w!! w !sudo tee > /dev/null %

nnoremap <silent> \j :<C-u>call search('\%' . virtcol('.') . 'v\S', 'W')<CR>
nnoremap <silent> \k :<C-u>call search('\%' . virtcol('.') . 'v\S', 'bW')<CR>

"nnoremap \t :belowright split <bar> execute 'terminal npm run test' expand('%')<CR>
nnoremap \l :belowright split <bar> execute 'terminal npm run lint-pr' expand('%')<CR>

nnoremap \f :let currentFileName = expand('%') <bar> let @+ = currentFileName <bar> let @" = currentFileName <bar> let @* = currentFileName<CR><CR>

nnoremap <M-j> :res -20<CR><C-w>ja<C-l>
tnoremap <M-k> <C-\><C-n>:res -20<CR><C-w>k<C-l>
nnoremap <M-k> :res -20<CR><C-w>k<C-l>
tnoremap <Esc> <C-\><C-n>

nnoremap <leader>t :belowright split <bar> terminal<CR>a

" Russian layot
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;ABCDEFGHIJKLMNOPQRSTUVWXYZ:,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" File Explorer
let g:netrw_liststyle=3



if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

hi xmlEndTag ctermfg=4

let g:neomake_javascript_eslint_exe = $PWD .'/node_modules/.bin/eslint'
let g:neomake_sss_eslint_exe = $PWD .'/node_modules/.bin/stylelint'

autocmd! BufWritePost,BufEnter * Neomake

nnoremap <leader>sv :source $MYVIMRC<cr>

augroup sourceVimrc
  autocmd!
  autocmd BufWritePost ~/.config/nvim/init.vim :source $MYVIMRC
augroup END
nnoremap <leader>v :vsplit $MYVIMRC<cr>

source ~/.config/nvim/abbreviations.vim

augroup markdown
  autocmd!
  autocmd FileType markdown onoremap <buffer> ah :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rg_vk0"<cr>
  autocmd FileType markdown onoremap <buffer> ih :<c-u>execute "normal! ?\(^==\\+$\\|^--\\+$\)\r:nohlsearch\rkvg_"<cr>
augroup END

augroup goto
  autocmd!
  autocmd FileType javascript.jsx nnoremap <buffer> <leader>gs :e %:r.css<cr>
  autocmd FileType javascript.jsx nnoremap <buffer> <leader>gc :e %:r.js<cr>
  autocmd FileType javascript.jsx nnoremap <buffer> <leader>gt :e %:r.test.js<cr>
augroup END

let maplocalleader = "\\"
augroup runJava
  autocmd!
  autocmd FileType java :silent !make setcurrent %
  autocmd FileType java nnoremap <localleader>r :rightbelow split <bar> terminal make run<cr>
augroup END

"let $CLASSPATH='.:./stdlib:./exercises/*:./programs/*'
nnoremap <leader>n :nohl<cr>
set mouse=a

nnoremap <leader>a :e %:h/
nnoremap <leader>r :%s/<c-r><c-w>//g<left><left>

function! g:Open_term_in_cur_dir() abort
  let currdir = getcwd()
  let netrwdir = expand("%:h")
  execute 'lcd '.netrwdir
  execute 'belowright split'
  execute 'terminal'
  execute 'normal a'
  execute 'lcd '.currdir
endfunction

nnoremap <leader>T :call g:Open_term_in_cur_dir()<CR>

" Set bin if you have many instalations
let g:deoplete#sources#ternjs#tern_bin = '/usr/bin/tern'
let g:deoplete#sources#ternjs#timeout = 1

" Whether to include the types of the completions in the result data. Default: 0
let g:deoplete#sources#ternjs#types = 1

" Whether to include the distance (in scopes for variables, in prototypes for 
" properties) between the completions and the origin position in the result 
" data. Default: 0
let g:deoplete#sources#ternjs#depths = 1

" Whether to include documentation strings (if found) in the result data.
" Default: 0
let g:deoplete#sources#ternjs#docs = 1

" When on, only completions that match the current word at the given point will
" be returned. Turn this off to get all results, so that you can filter on the 
" client side. Default: 1
let g:deoplete#sources#ternjs#filter = 0

" Whether to use a case-insensitive compare between the current word and 
" potential completions. Default 0
let g:deoplete#sources#ternjs#case_insensitive = 1

" When completing a property and no completions are found, Tern will use some 
" heuristics to try and return some properties anyway. Set this to 0 to 
" turn that off. Default: 1
let g:deoplete#sources#ternjs#guess = 0

" Determines whether the result set will be sorted. Default: 1
let g:deoplete#sources#ternjs#sort = 0

" When disabled, only the text before the given position is considered part of 
" the word. When enabled (the default), the whole variable name that the cursor
" is on will be included. Default: 1
let g:deoplete#sources#ternjs#expand_word_forward = 0

" Whether to ignore the properties of Object.prototype unless they have been 
" spelled out by at least two characters. Default: 1
let g:deoplete#sources#ternjs#omit_object_prototype = 0

" Whether to include JavaScript keywords when completing something that is not 
" a property. Default: 0
let g:deoplete#sources#ternjs#include_keywords = 1

" If completions should be returned when inside a literal. Default: 1
let g:deoplete#sources#ternjs#in_literal = 0


"Add extra filetypes
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ ]
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

inoremap <silent><expr> <Tab>
    \ pumvisible() ? "\<C-n>" : deoplete#manual_complete()

set statusline+=,\ col:\ %c

nmap <Leader>E :e %:h/
nmap <Leader>os :e %:h/styles.js<cr>
nmap <Leader>ot :e %:h/index.spec.jsx<cr>
nmap <Leader>oi :e %:h/index.jsx<cr>
nmap <Leader>oo :e %:h/index.story.jsx<cr>

nmap <Leader>vs :vs %:h/styles.js<cr>
nmap <Leader>vt :vs %:h/index.spec.jsx<cr>
nmap <Leader>vi :vs %:h/index.jsx<cr>
nmap <Leader>vo :vs %:h/index.story.jsx<cr>

"fun! TermTest(cmd)
    "call termopen(a:cmd, {'on_exit': 's:OnExit'})
"endfun

"fun! s:OnExit(job_id, code, event) dict
    "if a:code == 0
        "close
    "endif
"endfun

"nnoremap <leader>W :call TermTest()<CR>

"function! OnTermClose()
    "" Try to move the cursor to the last line containing text
    "try
        "$;?.
    "catch
        "" The buffer is empty here. This shouldn't ever happen
        "return
    "endtry
    "" Is the last line an error message?
    "if match(getline('.'), 'make: \*\*\* \[[^\]]\+] Error ') == -1
        "call feedkeys('a ')
    "endif
"endfunction

"augroup MY_TERM_AUGROUP
    "autocmd!
    "au TermClose * silent call OnTermClose()
"augroup END

nnoremap <leader>e :term ranger<cr>a
"nnoremap <leader>e :TermTest("ranger")<cr>a

inoremap <c-t> <esc>vBs<<esc>pa></<esc>pa><esc>F<i
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
hi HighlightedyankRegion cterm=reverse gui=reverse

let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
set path=.,src,node_modules
set suffixesadd=.js,.jsx
runtime macros/sandwich/keymap/surround.vim
