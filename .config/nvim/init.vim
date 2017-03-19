" Vundle settings
set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.config/nvim/plugins')
Plug 'pangloss/vim-javascript'
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'https://github.com/Valloric/YouCompleteMe'
Plug 'https://github.com/marijnh/tern_for_vim'
Plug 'https://github.com/SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'https://github.com/scrooloose/nerdcommenter'
Plug 'https://github.com/mxw/vim-jsx'
Plug 'https://github.com/easymotion/vim-easymotion'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/Raimondi/delimitMate'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/vim-scripts/Vim-R-plugin'
Plug 'https://github.com/tpope/vim-abolish'
Plug 'https://github.com/severin-lemaignan/vim-minimap'
Plug 'https://github.com/majutsushi/tagbar'
Plug 'https://github.com/mileszs/ack.vim'
Plug 'https://github.com/rking/ag.vim'
Plug 'https://github.com/neomake/neomake'
Plug 'https://github.com/grassdog/tagman.vim'
Plug 'https://github.com/wavded/vim-stylus'
Plug 'https://github.com/Valloric/MatchTagAlways'
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

call plug#end()

" UltiSnips settings
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
"let g:UltiSnipsJumpBackwardTrigger="<c-h>"

" Ctrl p Settings
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -s -l --nocolor -g ""'
endif

" YouCompleteMe Settings
let g:ycm_add_preview_to_completeopt=0
let g:ycm_autoclose_preview_window_after_completion=1

" Vim-jsx Settings
let g:jsx_ext_required = 0

" Cosco settings
autocmd FileType javascript,css nnoremap <silent> <Leader>; :call cosco#commaOrSemiColon()<CR>
autocmd FileType javascript,css inoremap <silent> <Leader>; <c-o>:call cosco#commaOrSemiColon()<CR>

" Make paste and copy work
set clipboard+=unnamed
set clipboard=unnamedplus

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
set listchars=eol:~,tab:>>,trail:~,extends:>,precedes:<
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

" fucking 80 characters
highlight OverLength term=underline cterm=underline
match OverLength /\%81v.\+/

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

nnoremap \t :belowright split <bar> execute 'terminal npm run test' expand('%')<CR>
nnoremap \l :belowright split <bar> execute 'terminal npm run lint-pr' expand('%')<CR>

nnoremap \f :let currentFileName = expand('%') <bar> let @+ = currentFileName <bar> let @" = currentFileName <bar> let @* = currentFileName<CR><CR>

nnoremap <M-j> :res -20<CR><C-w>ja<C-l>
tnoremap <M-k> <C-\><C-n>:res -20<CR><C-w>k<C-l>
nnoremap <M-k> :res -20<CR><C-w>k<C-l>
tnoremap <Esc> <C-\><C-n>

command! Term execute "rightbelow split | terminal"
command! Terminal execute "rightbelow split | terminal"

" Russian layot
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;ABCDEFGHIJKLMNOPQRSTUVWXYZ:,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" File Explorer
let g:netrw_liststyle=3

nnoremap <leader>e <c-z>ranger

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
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

source ~/.config/nvim/abbreviations.vim

augroup markdown
  autocmd!
  autocmd FileType markdown onoremap <buffer> ah :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rg_vk0"<cr>
  autocmd FileType markdown onoremap <buffer> ih :<c-u>execute "normal! ?\(^==\\+$\\|^--\\+$\)\r:nohlsearch\rkvg_"<cr>
augroup END

augroup goto
  autocmd!
  autocmd FileType javascript.jsx nnoremap <buffer> <leader>gs :e %:r.sss<cr>
  autocmd FileType javascript.jsx nnoremap <buffer> <leader>gc :e %:r.js<cr>
  autocmd FileType javascript.jsx nnoremap <buffer> <leader>gt :e %:r.test.js<cr>
augroup END


