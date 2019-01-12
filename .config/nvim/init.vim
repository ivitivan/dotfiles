set nocompatible
filetype off

call plug#begin('~/.config/nvim/plugins')
Plug 'pangloss/vim-javascript'
Plug '/usr/bin/fzf'
Plug 'https://github.com/junegunn/fzf.vim'
Plug 'https://github.com/marijnh/tern_for_vim'
Plug 'honza/vim-snippets'
Plug 'https://github.com/scrooloose/nerdcommenter'
Plug 'https://github.com/mxw/vim-jsx'
Plug 'https://github.com/HerringtonDarkholme/yats.vim'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/Raimondi/delimitMate'
Plug 'https://github.com/machakann/vim-sandwich'
Plug 'https://github.com/vim-scripts/Vim-R-plugin'
Plug 'https://github.com/tpope/vim-abolish'
Plug 'https://github.com/severin-lemaignan/vim-minimap'
Plug 'https://github.com/majutsushi/tagbar'
Plug 'https://github.com/mileszs/ack.vim'
Plug 'https://github.com/mileszs/ack.vim'
Plug 'https://github.com/grassdog/tagman.vim'
Plug 'https://github.com/wavded/vim-stylus'
Plug 'https://github.com/vim-scripts/JavaScript-Indent'
Plug 'https://github.com/KabbAmine/vCoolor.vim'
Plug 'https://github.com/groenewege/vim-less'
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
" Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'https://github.com/lambdalisue/lista.nvim'
Plug 'https://github.com/lambdalisue/vim-rplugin'
Plug 'https://github.com/bradford-smith94/quick-scope'
Plug 'https://github.com/machakann/vim-highlightedyank'
Plug 'https://github.com/vim-scripts/ReplaceWithRegister'
Plug 'https://github.com/yuttie/comfortable-motion.vim'
Plug 'https://github.com/moll/vim-node'
Plug 'https://github.com/neovimhaskell/haskell-vim'
Plug 'https://github.com/qpkorr/vim-bufkill'

" bufexplorer
Plug 'https://github.com/jlanzarotta/bufexplorer'

" Spelling
Plug 'https://github.com/rhysd/vim-grammarous'

Plug 'https://github.com/itchyny/calendar.vim'


" NERDTree
Plug 'https://github.com/scrooloose/nerdtree'
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
hi HighlightedyankRegion cterm=reverse gui=reverse

" Close tags
Plug 'https://github.com/alvan/vim-closetag'
let g:closetag_filenames = '*.jsx,*.tsx'
let g:closetag_xhtml_filenames = '*.jsx'

" language server protocol
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'https://github.com/prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

let s:asyncomplete_blacklist = []

if executable('typescript-language-server')
  " npm i -g typescript-language-server
  let s:asyncomplete_blacklist += ['typescript']
  au User lsp_setup call lsp#register_server({
      \ 'name': 'typescript-language-server',
      \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
      \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'package.json'))},
      \ 'whitelist': ['typescript', 'typescript.tsx', 'javascript', 'javascript.jsx'],
      \ })
  autocmd FileType typescript,typescript.tsx,javascript,javascript.jsx nnoremap <buffer><silent> <c-]>  :LspDefinition<cr>
  autocmd FileType typescript,typescript.tsx,javascript,javascript.jsx nnoremap <buffer><silent> K :LspHover<cr>
  autocmd FileType typescript,typescript.tsx,javascript,javascript.jsx setlocal omnifunc=lsp#complete
endif

call plug#end()

" fzf
nnoremap <c-p> :Files<cr>
nnoremap <c-n> :Buffers<cr>
nnoremap <c-h> :History<cr>

" language-server-protocol
let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1 
let g:lsp_signs_error = {'text': '✗'}
let g:lsp_signs_warning = {'text': '‼'}
let g:lsp_signs_hint = {'text': '!'}

" UltiSnips settings
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsSnippetsDir="~/.config/nvim/UltiSnips"
"let g:UltiSnipsJumpBackwardTrigger="<c-h>"

" Vim-jsx Settings
let g:jsx_ext_required = 0

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
set listchars=eol:⏎,tab:··,trail:~,extends:>,precedes:<
set list

" Backspace
set backspace=2

" Vimscript file settings ---------------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" Edit workflow
" Let vim switch between files without annoying saving message
set hidden
" Undo
set undofile

" Disable autocomments
augroup disable_autocomments
  autocmd!
  autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
augroup END

" Key bindings
" execute "set <M-n>=\en"
nnoremap <M-n> :bnext<CR>
" execute "set <M-p>=\ep"
nnoremap <M-p> :bprevious<CR>

" Search the word on the Internet under cursor
" nmap <Leader>s :silent !google-chrome-stable 'https://google.com/\#q=<C-R><C-W>'<CR><C-L>

" Search
nnoremap <leader>s yiw:set nohlsearch<bar>Ack <c-r>" <cr>
nnoremap * *:set hlsearch<cr>
nnoremap <leader>h *N:set hlsearch<cr>
" nnoremap <leader>h :let @/ = '\<'.expand('<cword>').'\>'\<bar>set hlsearch<cr>

" 80 characters
highlight OverLength term=underline cterm=underline
augroup highlight80
  autocmd!
  autocmd FileType * match none
  autocmd FileType javascript.jsx match OverLength /\%81v.\+/
augroup END

set scrolloff=5

highlight MatchParen ctermbg=9 term=bold ctermfg=none

" copy filename to clipboard
noremap <silent> <F4> :let @+=expand("%:p")<CR>

set incsearch

nmap ,cs :let @+=expand("%")<CR>
let g:localvimrc_ask=0

"Open Gdiff in vertical mode
set diffopt+=vertical

hi User1 ctermbg=19 ctermfg=11

" Show status line
set laststatus=2
set statusline=
set statusline+=%1*
set statusline+=%f\ 
set statusline+=%* 
set statusline+=[%{strlen(&fenc)?&fenc:'none'},%{&ff}]\ 
set statusline+=%h%m%r%y%=%c,%l/%L\ %P

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
nnoremap <leader>n :set hlsearch!<cr>

nnoremap n :set hlsearch<cr>n
nnoremap N :set hlsearch<cr>N

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

" Ranger
nnoremap <leader>d :topleft split <bar> term ranger<cr>a
nnoremap <leader>D :topleft split <bar> execute 'term ranger '.expand("%:h")<cr>a

" Close terminal, when process ends
augroup close_terminal
  autocmd!
  autocmd TermClose *:ranger*,*:/bin/zsh :bd!
augroup END

" Create html tag
" inoremap <c-t> <esc>vBs<<esc>pa></<esc>pa><esc>F<i

let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
set path=.,src,node_modules
set suffixesadd=.js,.jsx,.tsx

runtime macros/sandwich/keymap/surround.vim

set splitright

nnoremap <leader>rt :botright split <bar> term yarn test<cr>a
nnoremap <leader>re :botright split <bar> term yarn test-e2e --runInBand --bail<cr>a

cnoreabbrev ag Ack
cnoreabbrev aG Ack
cnoreabbrev Ag Ack
cnoreabbrev AG Ack

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

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

" set wildcharm=<C-z>
" nnoremap ,e :e **/*<C-z><S-Tab>
nnoremap <leader>e :e %:h/
nnoremap <leader>v :vs %:h/
nnoremap <leader>vs :vs %:h/

function! g:OpenInGitlab() abort
  let ln = "https://git.itv.restr.im/ITV.RT/b2b/hotel-tv-manager/blob/master/" . GetCurrentFileName() . "\\#L" . line(".")

  execute "!google-chrome-stable " . ln

endfunction

nnoremap <leader>g :call OpenInGitlab()<cr>

" nnoremap <leader>gf *ggnf'lgf
let @m = "*ggnf'lgfggn"
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

hi Search ctermfg=0 ctermbg=3

syntax sync fromstart

let g:ale_linters = {
\   'javascript': ['eslint'],
\}

set sidescroll=1

function! EatChar(pat)
    let c = nr2char(getchar(0))
    return (c =~ a:pat) ? '' : c
endfunction

function! MakeSpacelessIabbrev(from, to)
    execute "iabbrev <silent> ".a:from." ".a:to."<C-R>=EatChar('\\s')<CR>"
endfunction
function! MakeSpacelessBufferIabbrev(from, to)
    execute "iabbrev <silent> <buffer> ".a:from." ".a:to."<C-R>=EatChar('\\s')<CR>"
  endfunction

func! Eatchar(pat)
  let c = nr2char(getchar(0))
  return (c =~ a:pat) ? '' : c
endfunc

iabbr <silent> if if ()<Left><C-R>=Eatchar('\s')<CR>


nnoremap <leader>qc :ccl<cr>
nnoremap <leader>qo :copen<cr>

set title
augroup terminalTitle
  autocmd!
  autocmd VimEnter * let &titlestring = "nvim: " . getcwd()
augroup END

nnoremap <BS> :NERDTreeToggle<cr>

" JavaScript
function! g:Eslint() abort
  let current_file = expand("%")
  execute '!npx eslint --fix '.current_file
endfunction

function! g:Tslint() abort
  let current_file = expand("%")
  execute '!npx tslint --fix --jsx '.current_file
endfunction

augroup javascriptLinters
  autocmd!
  autocmd FileType javascript.jsx,javascript nnoremap <leader>l :call Eslint()<cr>:e<cr><cr>
  autocmd FileType typescriptreact,typescript,typescript.tsx nnoremap <leader>l :call Tslint()<cr>:e<cr><cr>

  autocmd BufRead,BufNewFile,BufEnter *.js,*.jsx,*.ts,*.tsx nnoremap <leader>rct :botright split <bar> execute 'term yarn test --testPathPattern=' . expand('%')<cr>a
  autocmd BufRead,BufNewFile,BufEnter *.js,*.jsx,*.ts,*.tsx nnoremap <leader>uct :botright split <bar> execute 'term yarn test -u --testPathPattern=' . expand('%')<cr>a
  autocmd BufRead,BufNewFile,BufEnter */e2e/__*.js nnoremap <localleader>rct :botright split <bar> execute 'term yarn test-e2e --runInBand --testPathPattern=' . expand('%')<cr>a
  autocmd BufRead,BufNewFile,BufEnter */e2e/__*.js nnoremap <localleader>rch :botright split <bar> execute 'term yarn test-e2e-headful --runInBand --testPathPattern=' . expand('%')<cr>a

  autocmd FileWritePost javascript,javascript.jsx :call Eslint()<cr>:e<cr><cr>
augroup END

augroup javascript_abbreviations
  autocmd!
  au FileType javascript,javascript.jsx iabbr <silent> if if ()<Left><C-R>=Eatchar('\s')<CR>
  au FileType javascript,javascript.jsx iabbr <silent>clog console.log();<C-R>=EatChar('\s')<CR><left><left>
  " au FileType javascript,javascript.jsx call MakeSpacelessBufferIabbrev('clog', 'console.log();<left><left>')
  au FileType javascript,javascript.jsx call MakeSpacelessBufferIabbrev('im', "import  from '';<left><left><left><left><left><left><left><left><left>")
augroup END

augroup javscript
  autocmd!
  au Filetype javascript,javascript.jsx setlocal include=^\\s*[^\/]\\+\\(from\\\|require(['\"]\\)
augroup END
