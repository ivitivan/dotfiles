" Vundle settings
set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.config/nvim/plugins')
Plug 'pangloss/vim-javascript'
" Plug 'leafgarland/typescript-vim'
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
"Plug 'https://github.com/Valloric/YouCompleteMe'
Plug 'https://github.com/marijnh/tern_for_vim'
Plug 'https://github.com/SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'https://github.com/scrooloose/nerdcommenter'
Plug 'https://github.com/mxw/vim-jsx'
Plug 'https://github.com/peitalin/vim-jsx-typescript'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/Raimondi/delimitMate'
Plug 'https://github.com/machakann/vim-sandwich'
Plug 'https://github.com/vim-scripts/Vim-R-plugin'
Plug 'https://github.com/tpope/vim-abolish'
Plug 'https://github.com/severin-lemaignan/vim-minimap'
Plug 'https://github.com/majutsushi/tagbar'
Plug 'https://github.com/mileszs/ack.vim'
Plug 'https://github.com/mileszs/ack.vim'
Plug 'https://github.com/neomake/neomake'
Plug 'https://github.com/grassdog/tagman.vim'
Plug 'https://github.com/wavded/vim-stylus'
Plug 'https://github.com/vim-scripts/JavaScript-Indent'
Plug 'https://github.com/KabbAmine/vCoolor.vim'
Plug 'https://github.com/groenewege/vim-less'
" Plug 'https://github.com/embear/vim-localvimrc'
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
" Plug 'https://gitlab.com/Jrahme/smart-mark.git'
Plug 'https://github.com/neovimhaskell/haskell-vim'
Plug 'https://github.com/qpkorr/vim-bufkill'
" Plug 'https://github.com/aanari/vim-tsx-pretty'
" Plug 'https://github.com/leafgarland/typescript-vim'
" Plug 'https://github.com/Quramy/tsuquyomi'

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
let g:ctrlp_match_current_file = 1

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
set softtabstop=2
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
" execute "set <M-n>=\en"
nnoremap <M-n> :bnext<CR>
" execute "set <M-p>=\ep"
nnoremap <M-p> :bprevious<CR>

" Search the word on the Internet under cursor
" nmap <Leader>s :silent !google-chrome-stable 'https://google.com/\#q=<C-R><C-W>'<CR><C-L>

nmap <leader>s yiw:Ack <c-r>"<cr>

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

" Find next symbol in this column
nnoremap <silent> <leader>j :<C-u>call search('\%' . virtcol('.') . 'v\S', 'W')<CR>
nnoremap <silent> <leader>k :<C-u>call search('\%' . virtcol('.') . 'v\S', 'bW')<CR>


function! g:Copy(text) abort
  let @+ = a:text
  let @" = a:text
  let @* = a:text
endfunction


function! g:GetCurrentFileName() abort
  return expand('%')
endfunction

" Copy current file name
nnoremap <leader>f :let currentFileName = expand('%') <bar> call Copy(currentFileName)<cr>

nnoremap <M-j> :res -20<CR><C-w>ja<C-l>
tnoremap <M-k> <C-\><C-n>:res -20<CR><C-w>k<C-l>
nnoremap <M-k> :res -20<CR><C-w>k<C-l>
tnoremap <Esc> <C-\><C-n>

nnoremap <leader>t :botright split <bar> terminal<CR>:set filetype=terminal<cr>a

" Russian layot
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;ABCDEFGHIJKLMNOPQRSTUVWXYZ:,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" File Explorer
let g:netrw_liststyle=3



if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

hi xmlEndTag ctermfg=4

autocmd FileType javascript,javascript.jsx let g:neomake_javascript_eslint_exe = $PWD .'/node_modules/.bin/eslint'
autocmd FileType typescript,typescriptreact,typescript.tsx let g:neomake_typescript_tslint_exe = $PWD .'/node_modules/.bin/tslint'

let g:neomake_sss_eslint_exe = $PWD .'/node_modules/.bin/stylelint'

let g:neomake_typescript_tsc_maker = {
    \ 'args': ['--module', 'system', '--target', 'ES5', '--experimentalDecorators', '--noEmit', '--jsx'] }

autocmd! BufWritePost,BufEnter * Neomake

nnoremap <leader>sv :source $MYVIMRC<cr>

augroup sourceVimrc
  autocmd!
  autocmd BufWritePost ~/.config/nvim/init.vim :source $MYVIMRC
augroup END
nnoremap <leader>ve :vsplit $MYVIMRC<cr>

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
  execute 'botright split'
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

inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ deoplete#mappings#manual_complete()
function! s:check_back_space() abort "{{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

set statusline+=,\ col:\ %c

nnoremap <leader>d :topleft split <bar> term ranger<cr>a
nnoremap <leader>D :topleft split <bar> execute 'term ranger '.expand("%:h")<cr>a
autocmd TermClose *:ranger,*:/bin/zsh bd!

inoremap <c-t> <esc>vBs<<esc>pa></<esc>pa><esc>F<i
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
hi HighlightedyankRegion cterm=reverse gui=reverse

let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
set path=.,src,node_modules
set suffixesadd=.js,.jsx,.tsx

runtime macros/sandwich/keymap/surround.vim

function! g:Eslint() abort
  let current_file = expand("%")
  execute '!npx eslint --fix '.current_file
endfunction

function! g:Tslint() abort
  let current_file = expand("%")
  execute '!npx tslint --fix --jsx '.current_file
endfunction

autocmd FileType javascript.jsx,javascript nnoremap <leader>l :call Eslint()<cr>:e<cr><cr>
autocmd FileType typescriptreact,typescript,typescript.tsx nnoremap <leader>l :call Tslint()<cr>:e<cr><cr>

" autocmd BufWritePost *.js,*.jsx call Eslint()

set splitright

autocmd BufRead,BufNewFile,BufEnter *.js,*.jsx,*.ts,*.tsx nnoremap <leader>rct :botright split <bar> execute 'term yarn test --testPathPattern=' . expand('%')<cr>a
autocmd BufRead,BufNewFile,BufEnter *.js,*.jsx,*.ts,*.tsx nnoremap <leader>uct :botright split <bar> execute 'term yarn test -u --testPathPattern=' . expand('%')<cr>a
autocmd BufRead,BufNewFile,BufEnter */e2e/__*.js nnoremap <localleader>rct :botright split <bar> execute 'term yarn test-e2e --runInBand --testPathPattern=' . expand('%')<cr>a
autocmd BufRead,BufNewFile,BufEnter */e2e/__*.js nnoremap <localleader>rch :botright split <bar> execute 'term yarn test-e2e-headful --runInBand --testPathPattern=' . expand('%')<cr>a
nnoremap <leader>rt :botright split <bar> term yarn test<cr>a
nnoremap <leader>re :botright split <bar> term yarn test-e2e --runInBand --bail<cr>a

cnoreabbrev ag Ack
cnoreabbrev aG Ack
cnoreabbrev Ag Ack
cnoreabbrev AG Ack

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

autocmd FileWritePost javascript,javascript.jsx :call Eslint()<cr>:e<cr><cr>


" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
set completeopt-=preview
" tnoremap <c-d> <c-\><c-n>:bd!<cr>

" Use project's .vimrc
set exrc
set secure

" vim-javascript settings
set conceallevel=0
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"

" typescript.tsx
highlight tsxCloseString ctermfg=4
highlight htmlTag ctermfg=4
highlight htmlTagName ctermfg=4

nnoremap <leader>e :e %:h/
nnoremap <leader>v :vs %:h/
nnoremap <leader>vs :vs %:h/

" Scrollbar
" func! STL()
"   let stl = '%f [%{(&fenc==""?&enc:&fenc).((exists("+bomb") && &bomb)?",B":"")}%M%R%H%W] %y [%l/%L,%v] [%p%%]'
"   let barWidth = &columns - 65 " <-- wild guess
"   let barWidth = barWidth < 3 ? 3 : barWidth

"   if line('$') > 1
"     let progress = (line('.')-1) * (barWidth-1) / (line('$')-1)
"   else
"     let progress = barWidth/2
"   endif

"   " line + vcol + %
"   let pad = strlen(line('$'))-strlen(line('.')) + 3 - strlen(virtcol('.')) + 3 - strlen(line('.')*100/line('$'))
"   let bar = repeat(' ',pad).' [%1*%'.barWidth.'.'.barWidth.'('
"         \.repeat('-',progress )
"         \.'%2*0%1*'
"         \.repeat('-',barWidth - progress - 1).'%0*%)%<]'

"   return stl.bar
" endfun

" hi def link User1 DiffAdd
" hi def link User2 DiffDelete
" set stl=%!STL()

set laststatus=2

" au BufRead *.html set filetype=htmlm4

function! g:OpenInGitlab() abort
  let ln = "https://git.itv.restr.im/ITV.RT/b2b/hotel-tv-manager/blob/master/" . GetCurrentFileName() . "\\#L" . line(".")

  execute "!google-chrome-stable " . ln

endfunction

nnoremap <leader>g :call OpenInGitlab()<cr>

" nnoremap <leader>gf *ggnf'lgf
let @m = "*ggnf'lgfn"
nnoremap <leader>gf @m

" vmap "+y :!xclip -f -sel clip
" map "+p :r!xclip -o -sel clip

nnoremap <leader>ms :mksession! /tmp/vimsession<cr>
nnoremap <leader>os :so /tmp/vimsession<cr>

" Move visually selected line up and down
function! g:CheckCurrentLine() abort
  return line("v") == line('$') || line('.') == line('$')
endfunction
vnoremap J dp`[V`]
vnoremap <expr> K (CheckCurrentLine()) ? 'dP`[V`]':'dkP`[V`]'
