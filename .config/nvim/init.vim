set nocompatible

filetype off

call plug#begin('~/.config/nvim/plugins')
Plug 'https://github.com/sheerun/vim-polyglot'
Plug 'https://github.com/ap/vim-css-color'
" Plug 'pangloss/vim-javascript'
" Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'https://github.com/marijnh/tern_for_vim'
" Plug 'honza/vim-snippets'
" Plug 'https://github.com/scrooloose/nerdcommenter'
Plug 'https://github.com/numToStr/Comment.nvim'
" Plug 'https://github.com/mxw/vim-jsx'

" Typescript highlighter
Plug 'https://github.com/HerringtonDarkholme/yats.vim'
Plug 'https://github.com/tpope/vim-fugitive'

" automatic closing of quotes
Plug 'https://github.com/Raimondi/delimitMate'

" Set of operator and textobject plugins to add/delete/replace surroundings of a sandwiched textobject
Plug 'https://github.com/machakann/vim-sandwich'

Plug 'https://github.com/tpope/vim-abolish'
Plug 'https://github.com/severin-lemaignan/vim-minimap'
Plug 'https://github.com/majutsushi/tagbar'
Plug 'https://github.com/mileszs/ack.vim'
" Plug 'https://github.com/grassdog/tagman.vim'
Plug 'https://github.com/KabbAmine/vCoolor.vim'

Plug 'metakirby5/codi.vim'
Plug 'https://github.com/tpope/vim-unimpaired'
Plug 'https://github.com/tpope/vim-vinegar'
Plug 'https://github.com/chrisbra/Colorizer'
" Plug 'https://github.com/hail2u/vim-css3-syntax'
" Plug 'sbdchd/neoformat'
Plug 'https://github.com/vim-scripts/dbext.vim'

" Plug 'https://github.com/jiangmiao/auto-pairs'

" Plug 'https://github.com/lambdalisue/lista.nvim'

Plug 'https://github.com/lambdalisue/vim-rplugin'

Plug 'https://github.com/bradford-smith94/quick-scope'
Plug 'https://github.com/machakann/vim-highlightedyank'
Plug 'https://github.com/vim-scripts/ReplaceWithRegister'
" Plug 'https://github.com/yuttie/comfortable-motion.vim'
" Plug 'https://github.com/moll/vim-node'
Plug 'https://github.com/neovimhaskell/haskell-vim'
Plug 'https://github.com/qpkorr/vim-bufkill'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

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
let g:closetag_filenames = '*.js,*.jsx,*.tsx'
let g:closetag_xhtml_filenames = '*.js,*.jsx,*tsx'

Plug 'https://github.com/othree/html5.vim'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/Shougo/deol.nvim'
Plug 'https://github.com/mattboehm/vim-unstack'
Plug 'https://github.com/AndrewRadev/tagalong.vim'
Plug 'https://github.com/junegunn/goyo.vim'
" Plug 'leafgarland/typescript-vim'
" Plug 'peitalin/vim-jsx-typescript'
Plug 'smallwat3r/vim-simplicity'
Plug 'huyvohcmc/atlas.vim'
Plug 'https://github.com/andreasvc/vim-256noir'
Plug 'lurst/austere.vim'
Plug 'davidosomething/vim-colors-meh'
Plug 'andreypopp/vim-colors-plain'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'numtostr/FTerm.nvim'

" Plug 'kyazdani42/nvim-web-devicons'
" Plug 'romgrk/barbar.nvim'
Plug 'petertriho/nvim-scrollbar', {'branch': 'main'}

Plug 'kevinhwang91/nvim-hlslens'

Plug 'catppuccin/nvim', {'as': 'catppuccin'}

Plug 'folke/which-key.nvim'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

Plug 'sindrets/diffview.nvim'

Plug 'lewis6991/gitsigns.nvim'

Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'edluffy/hologram.nvim'
Plug 'https://github.com/elkowar/yuck.vim'

Plug 'https://github.com/nvim-telescope/telescope-frecency.nvim'
Plug 'https://github.com/tami5/sqlite.lua'

Plug 'yegappan/mru'
Plug 'https://github.com/alan-w-255/telescope-mru.nvim'

Plug 'https://github.com/goolord/alpha-nvim'

Plug 'folke/trouble.nvim'

Plug 'lukas-reineke/indent-blankline.nvim'

function! UpdateRemotePlugins(...)
  " Needed to refresh runtime files
  let &rtp=&rtp
  UpdateRemotePlugins
endfunction

Plug 'gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }

Plug 'ghifarit53/tokyonight-vim'

Plug 'https://github.com/ethanholz/nvim-lastplace'

Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

Plug 'nvim-lualine/lualine.nvim'

Plug 'https://gitlab.com/yorickpeterse/nvim-window'

Plug 'gennaro-tedesco/nvim-peekup'

Plug 'https://github.com/luukvbaal/stabilize.nvim'

Plug 'https://github.com/tamton-aquib/duck.nvim'

call plug#end()
lua << EOF
  require("which-key").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF

" fzf
 " nnoremap <c-p> :FZF<cr>
 " nnoremap <c-n> :Buffers<cr>
" nnoremap <c-m> :Windows<cr>
 " nnoremap <c-h> :History<cr>

 " Vim-jsx Settings
 let g:jsx_ext_required = 0

 " Make paste and copy work
 set clipboard+=unnamed
 set clipboard+=unnamedplus

 " Define colorsheme and appearance
 "let base16colorspace="256"
 "let g:base16_shell_path="~/.config/base16-shell"
 let base16colorspace="256"
 set t_Co=256



let g:catppuccin_flavour = "mocha" " latte, frappe, macchiato, mocha

lua << EOF
require("catppuccin").setup({
	dim_inactive = {
		enabled = false,
		shade = "dark",
		percentage = 0.15,
	},
	transparent_background = false,
	term_colors = false,
	compile = {
		enabled = false,
		path = vim.fn.stdpath "cache" .. "/catppuccin",
	},
	styles = {
		comments = { "italic" },
		conditionals = { "italic" },
		loops = {},
		functions = {},
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
	integrations = {
		treesitter = true,
		native_lsp = {
			enabled = true,
			virtual_text = {
				errors = { "italic" },
				hints = { "italic" },
				warnings = { "italic" },
				information = { "italic" },
			},
			underlines = {
				errors = { "underline" },
				hints = { "underline" },
				warnings = { "underline" },
				information = { "underline" },
			},
		},
		coc_nvim = true,
		lsp_trouble = false,
		cmp = true,
		lsp_saga = false,
		gitgutter = false,
		gitsigns = true,
		leap = false,
		telescope = true,
		nvimtree = {
			enabled = true,
			show_root = true,
			transparent_panel = false,
		},
		neotree = {
			enabled = false,
			show_root = true,
			transparent_panel = false,
		},
		dap = {
			enabled = false,
			enable_ui = false,
		},
		which_key = false,
		indent_blankline = {
			enabled = true,
			colored_indent_levels = false,
		},
		dashboard = true,
		neogit = false,
		vim_sneak = false,
		fern = false,
		barbar = false,
		bufferline = true,
		markdown = true,
		lightspeed = false,
		ts_rainbow = false,
		hop = false,
		notify = true,
		telekasten = true,
		symbols_outline = true,
		mini = false,
		aerial = false,
		vimwiki = true,
		beacon = true,
	},
	color_overrides = {},
	custom_highlights = {},
})
EOF

set termguicolors

" let g:tokyonight_style = 'night' " available: night, storm
" let g:tokyonight_enable_italic = 1

" colorscheme tokyonight

colorscheme catppuccin
 " if $BACKGROUND == 'dark'
 "   set background=dark
 "   colorscheme base16-google
 " else
 "   set background=light
 "   colorscheme base16-atelier-dune.light
 " endif
 " colorscheme distilled
 " set termguicolors

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
 set listchars=tab:~~,trail:·,extends:>,precedes:<
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
function! StatusDiagnostic() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  let msgs = []
  if get(info, 'error', 0)
    call add(msgs, 'E' . info['error'])
  endif
  if get(info, 'warning', 0)
    call add(msgs, 'W' . info['warning'])
  endif
  return join(msgs, ' '). ' ' . get(g:, 'coc_status', '')
endfunction

 set laststatus=2
 set statusline=
 set statusline+=%1*
 set statusline+=%f\ 
 set statusline+=%* 
 set statusline+=[%{strlen(&fenc)?&fenc:'none'},%{&ff}]\ 
 set statusline+=%h%m%r%y%{StatusDiagnostic()}%=%c,%l/%L\ %P

 " Remove header in explorer
 let g:netrw_banner=0

 com -bar W exe 'w !sudo tee >/dev/null %:p:S' | setl nomod

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
 nnoremap <leader>cf :let currentFileName = expand('%') <bar> call Copy(currentFileName)<cr>

 nnoremap <M-j> :res -20<CR><C-w>ja<C-l>
 tnoremap <M-k> <C-\><C-n>:res -20<CR><C-w>k<C-l>
 nnoremap <M-k> :res -20<CR><C-w>k<C-l>
 tnoremap <Esc> <C-\><C-n>

au TermEnter * setlocal scrolloff=0
au TermLeave * setlocal scrolloff=5

 " nnoremap <leader>t :setlocal scrolloff=0 <bar> botright split <bar> terminal<CR>:set filetype=terminal<cr>a

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

 " nnoremap <leader>a :e %:h/
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
 " highlight tsxCloseString ctermfg=4
 " highlight htmlTag ctermfg=4
 " highlight htmlTagName ctermfg=4

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

 " iabbr <silent> if if ()<Left><C-R>=Eatchar('\s')<CR>


 nnoremap <leader>qc :ccl<cr>
 nnoremap <leader>qo :copen<cr>

 set title
 augroup terminalTitle
   autocmd!
   autocmd VimEnter * let &titlestring = "nvim: " . getcwd()
 augroup END

 nnoremap <leader><BS> :NvimTreeToggle<cr>

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

   " autocmd FileWritePost javascript,javascript.jsx :call Eslint()<cr>:e<cr><cr>
 augroup END

 augroup javascript_abbreviations
   autocmd!
   " au FileType javascript,javascript.jsx iabbr <silent> if if ()<Left><C-R>=Eatchar('\s')<CR>
   au FileType javascript,javascript.jsx iabbr <silent>clog console.log();<C-R>=EatChar('\s')<CR><left><left>
   " au FileType javascript,javascript.jsx call MakeSpacelessBufferIabbrev('clog', 'console.log();<left><left>')
   au FileType javascript,javascript.jsx call MakeSpacelessBufferIabbrev('im', "import  from '';<left><left><left><left><left><left><left><left><left>")
 augroup END

 augroup javscript
   autocmd!
   au Filetype javascript,javascript.jsx setlocal include=^\\s*[^\/]\\+\\(from\\\|require(['\"]\\)
 augroup END

 " set keymap=russian-jcukenwin

 inoreabbrev REact React

 
" May need for Vim (not Neovim) since coc.nvim calculates byte offset by count
" utf-8 byte sequence
set encoding=utf-8
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s)
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying code actions to the selected code block
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying code actions at the cursor position
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer
nmap <leader>as  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap keys for applying refactor code actions
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> to scroll float windows/popups
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges
" Requires 'textDocument/selectionRange' support of language server
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>


nnoremap <leader>z :!tidy -mi -xml -wrap 0 %

set encoding=UTF-8

" autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx


highlight PmenuSel ctermfg=251 ctermbg=242

au TermEnter * setlocal scrolloff=0
au TermLeave * setlocal scrolloff=5

" hi IncSearch ctermfg=0 ctermbg=6
" hi Search ctermfg=0 ctermbg=6
hi Todo ctermfg=0 ctermbg=8

inoremap <C-c> <Esc><Esc>


lua <<EOF
require("scrollbar").setup({
    show = true,
    handle = {
        text = " ",
        color = "white",
        hide_if_all_visible = true, -- Hides handle if all lines are visible
    },
    marks = {
        Search = { text = { "-", "=" }, priority = 0, color = "orange" },
        Error = { text = { "-", "=" }, priority = 1, color = "red" },
        Warn = { text = { "-", "=" }, priority = 2, color = "yellow" },
        Info = { text = { "-", "=" }, priority = 3, color = "blue" },
        Hint = { text = { "-", "=" }, priority = 4, color = "green" },
        Misc = { text = { "-", "=" }, priority = 5, color = "purple" },
    },
    excluded_filetypes = {
        "",
        "prompt",
        "TelescopePrompt",
    },
    autocmd = {
        render = {
            "BufWinEnter",
            "TabEnter",
            "TermEnter",
            "WinEnter",
            "CmdwinLeave",
            "TextChanged",
            "VimResized",
            "WinScrolled",
        },
    },
    handlers = {
        diagnostic = true,
        search = true,
    },
})
EOF

lua <<EOF
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "lua", "rust", "typescript" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF

" Find files using Telescope command-line sugar.
nnoremap <c-p> <cmd>Telescope find_files<cr>
nnoremap <c-m> <cmd>Telescope resume<cr>
nnoremap <c-h> <cmd>Telescope mru<cr>
nnoremap <c-g> <cmd>Telescope live_grep<cr>
nnoremap <c-n> <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

lua <<EOF
require('gitsigns').setup()
EOF

lua <<EOF
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- empty setup using defaults
require("nvim-tree").setup()
EOF


command! -nargs=0 Prettier :CocCommand prettier.formatFile

" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html,*.svg Prettier

lua <<EOF
require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ['<C-u>'] = false,
      }
    }
  },
  extensions = {
    frecency = {
      db_root = "home/vit/.local/share/nvim/",
      show_scores = false,
      show_unindexed = true,
      ignore_patterns = {"*.git/*", "*/tmp/*"},
      disable_devicons = false,
      workspaces = {
        ["conf"]    = "/home/vit/.config",
        ["data"]    = "/home/vit/.local/share",
        ["project"] = "/home/vit/projects",
        ["wiki"]    = "/home/vit/wiki"
      }
    }
  },
}
EOF

silent execute "!~/scripts/set-window-title " . $PWD

lua <<EOF
require("telescope").load_extension("mru")
EOF

lua <<EOF
require'alpha'.setup(require'alpha.themes.startify'.config)
EOF


nnoremap <silent> <c-w>f :let mycurf=expand("<cfile>")<cr><c-w>p:execute("e ".mycurf)<cr> 

lua << EOF
  require("trouble").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
EOF

nnoremap <leader>xx <cmd>TroubleToggle<cr>
nnoremap <leader>xw <cmd>TroubleToggle workspace_diagnostics<cr>
nnoremap <leader>xd <cmd>TroubleToggle document_diagnostics<cr>
nnoremap <leader>xq <cmd>TroubleToggle quickfix<cr>
nnoremap <leader>xl <cmd>TroubleToggle loclist<cr>
" nnoremap gR <cmd>TroubleToggle lsp_references<cr>

lua <<EOF
  require("indent_blankline").setup {
      -- for example, context is off by default, use this to turn it on
      show_current_context = false,
      show_current_context_start = false,
  }
EOF

call wilder#setup({'modes': [':', '/', '?']})

lua <<EOF
-- Lua
local actions = require("diffview.actions")

require("diffview").setup({
  diff_binaries = false,    -- Show diffs for binaries
  enhanced_diff_hl = true, -- See ':h diffview-config-enhanced_diff_hl'
  git_cmd = { "git" },      -- The git executable followed by default args.
  use_icons = true,         -- Requires nvim-web-devicons
  watch_index = true,       -- Update views and index buffers when the git index changes.
  icons = {                 -- Only applies when use_icons is true.
    folder_closed = "",
    folder_open = "",
  },
  signs = {
    fold_closed = "",
    fold_open = "",
    done = "✓",
  },
  view = {
    -- Configure the layout and behavior of different types of views.
    -- Available layouts: 
    --  'diff1_plain'
    --    |'diff2_horizontal'
    --    |'diff2_vertical'
    --    |'diff3_horizontal'
    --    |'diff3_vertical'
    --    |'diff3_mixed'
    --    |'diff4_mixed'
    -- For more info, see ':h diffview-config-view.x.layout'.
    default = {
      -- Config for changed files, and staged files in diff views.
      layout = "diff2_horizontal",
    },
    merge_tool = {
      -- Config for conflicted files in diff views during a merge or rebase.
      layout = "diff3_horizontal",
      disable_diagnostics = true,   -- Temporarily disable diagnostics for conflict buffers while in the view.
    },
    file_history = {
      -- Config for changed files in file history views.
      layout = "diff2_horizontal",
    },
  },
  file_panel = {
    listing_style = "tree",             -- One of 'list' or 'tree'
    tree_options = {                    -- Only applies when listing_style is 'tree'
      flatten_dirs = true,              -- Flatten dirs that only contain one single dir
      folder_statuses = "only_folded",  -- One of 'never', 'only_folded' or 'always'.
    },
    win_config = {                      -- See ':h diffview-config-win_config'
      position = "left",
      width = 35,
      win_opts = {}
    },
  },
  file_history_panel = {
    log_options = {   -- See ':h diffview-config-log_options'
      single_file = {
        diff_merges = "combined",
      },
      multi_file = {
        diff_merges = "first-parent",
      },
    },
    win_config = {    -- See ':h diffview-config-win_config'
      position = "bottom",
      height = 16,
      win_opts = {}
    },
  },
  commit_log_panel = {
    win_config = {   -- See ':h diffview-config-win_config'
      win_opts = {},
    }
  },
  default_args = {    -- Default args prepended to the arg-list for the listed commands
    DiffviewOpen = {},
    DiffviewFileHistory = {},
  },
  hooks = {},         -- See ':h diffview-config-hooks'
  keymaps = {
    disable_defaults = false, -- Disable the default keymaps
    view = {
      -- The `view` bindings are active in the diff buffers, only when the current
      -- tabpage is a Diffview.
      ["<tab>"]      = actions.select_next_entry,         -- Open the diff for the next file
      ["<s-tab>"]    = actions.select_prev_entry,         -- Open the diff for the previous file
      ["gf"]         = actions.goto_file,                 -- Open the file in a new split in the previous tabpage
      ["<C-w><C-f>"] = actions.goto_file_split,           -- Open the file in a new split
      ["<C-w>gf"]    = actions.goto_file_tab,             -- Open the file in a new tabpage
      ["<leader>e"]  = actions.focus_files,               -- Bring focus to the file panel
      ["<leader>b"]  = actions.toggle_files,              -- Toggle the file panel.
      ["g<C-x>"]     = actions.cycle_layout,              -- Cycle through available layouts.
      ["[x"]         = actions.prev_conflict,             -- In the merge_tool: jump to the previous conflict
      ["]x"]         = actions.next_conflict,             -- In the merge_tool: jump to the next conflict
      ["<leader>co"] = actions.conflict_choose("ours"),   -- Choose the OURS version of a conflict
      ["<leader>ct"] = actions.conflict_choose("theirs"), -- Choose the THEIRS version of a conflict
      ["<leader>cb"] = actions.conflict_choose("base"),   -- Choose the BASE version of a conflict
      ["<leader>ca"] = actions.conflict_choose("all"),    -- Choose all the versions of a conflict
      ["dx"]         = actions.conflict_choose("none"),   -- Delete the conflict region
    },
    diff1 = { --[[ Mappings in single window diff layouts ]] },
    diff2 = { --[[ Mappings in 2-way diff layouts ]] },
    diff3 = {
      -- Mappings in 3-way diff layouts
      { { "n", "x" }, "2do", actions.diffget("ours") },   -- Obtain the diff hunk from the OURS version of the file
      { { "n", "x" }, "3do", actions.diffget("theirs") }, -- Obtain the diff hunk from the THEIRS version of the file
    },
    diff4 = {
      -- Mappings in 4-way diff layouts
      { { "n", "x" }, "1do", actions.diffget("base") },   -- Obtain the diff hunk from the BASE version of the file
      { { "n", "x" }, "2do", actions.diffget("ours") },   -- Obtain the diff hunk from the OURS version of the file
      { { "n", "x" }, "3do", actions.diffget("theirs") }, -- Obtain the diff hunk from the THEIRS version of the file
    },
    file_panel = {
      ["j"]             = actions.next_entry,         -- Bring the cursor to the next file entry
      ["<down>"]        = actions.next_entry,
      ["k"]             = actions.prev_entry,         -- Bring the cursor to the previous file entry.
      ["<up>"]          = actions.prev_entry,
      ["<cr>"]          = actions.select_entry,       -- Open the diff for the selected entry.
      ["o"]             = actions.select_entry,
      ["<2-LeftMouse>"] = actions.select_entry,
      ["-"]             = actions.toggle_stage_entry, -- Stage / unstage the selected entry.
      ["S"]             = actions.stage_all,          -- Stage all entries.
      ["U"]             = actions.unstage_all,        -- Unstage all entries.
      ["X"]             = actions.restore_entry,      -- Restore entry to the state on the left side.
      ["L"]             = actions.open_commit_log,    -- Open the commit log panel.
      ["<c-b>"]         = actions.scroll_view(-0.25), -- Scroll the view up
      ["<c-f>"]         = actions.scroll_view(0.25),  -- Scroll the view down
      ["<tab>"]         = actions.select_next_entry,
      ["<s-tab>"]       = actions.select_prev_entry,
      ["gf"]            = actions.goto_file,
      ["<C-w><C-f>"]    = actions.goto_file_split,
      ["<C-w>gf"]       = actions.goto_file_tab,
      ["i"]             = actions.listing_style,        -- Toggle between 'list' and 'tree' views
      ["f"]             = actions.toggle_flatten_dirs,  -- Flatten empty subdirectories in tree listing style.
      ["R"]             = actions.refresh_files,        -- Update stats and entries in the file list.
      ["<leader>e"]     = actions.focus_files,
      ["<leader>b"]     = actions.toggle_files,
      ["g<C-x>"]        = actions.cycle_layout,
      ["[x"]            = actions.prev_conflict,
      ["]x"]            = actions.next_conflict,
    },
    file_history_panel = {
      ["g!"]            = actions.options,          -- Open the option panel
      ["<C-A-d>"]       = actions.open_in_diffview, -- Open the entry under the cursor in a diffview
      ["y"]             = actions.copy_hash,        -- Copy the commit hash of the entry under the cursor
      ["L"]             = actions.open_commit_log,
      ["zR"]            = actions.open_all_folds,
      ["zM"]            = actions.close_all_folds,
      ["j"]             = actions.next_entry,
      ["<down>"]        = actions.next_entry,
      ["k"]             = actions.prev_entry,
      ["<up>"]          = actions.prev_entry,
      ["<cr>"]          = actions.select_entry,
      ["o"]             = actions.select_entry,
      ["<2-LeftMouse>"] = actions.select_entry,
      ["<c-b>"]         = actions.scroll_view(-0.25),
      ["<c-f>"]         = actions.scroll_view(0.25),
      ["<tab>"]         = actions.select_next_entry,
      ["<s-tab>"]       = actions.select_prev_entry,
      ["gf"]            = actions.goto_file,
      ["<C-w><C-f>"]    = actions.goto_file_split,
      ["<C-w>gf"]       = actions.goto_file_tab,
      ["<leader>e"]     = actions.focus_files,
      ["<leader>b"]     = actions.toggle_files,
      ["g<C-x>"]        = actions.cycle_layout,
    },
    option_panel = {
      ["<tab>"] = actions.select_entry,
      ["q"]     = actions.close,
    },
  },
})

EOF


command! DiffInline vsp | exe 'term git diff | delta' | startinsert

command! DiffInlineFile vsp | exe 'term git diff -- '
            \ . shellescape(expand("%")) . ' | delta' | startinsert

lua <<EOF
require'nvim-lastplace'.setup{}
EOF

lua <<EOF
require("toggleterm").setup{
  open_mapping = [[<c-\>]],
}
EOF

lua << END
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'diff', 'diagnostics'},
    lualine_c = {
      {
      'filename',
      path = 1
      }
    },
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
END

nnoremap <silent> <c-w> :lua require('nvim-window').pick()<CR>
nnoremap <silent> <c-w>l <c-w>l
nnoremap <silent> <c-w>h <c-w>h
nnoremap <silent> <c-w>k <c-w>k
nnoremap <silent> <c-w>j <c-w>j
nnoremap <silent> <c-w>c <c-w>c
nnoremap <silent> <c-w>o <c-w>o
nnoremap <silent> <c-w>H <c-w>H
nnoremap <silent> <c-w>L <c-w>L
nnoremap <silent> <c-w>K <c-w>K
nnoremap <silent> <c-w>J <c-w>J

lua <<END
require("stabilize").setup()
END

nnoremap <leader>dd :lua require("duck").hatch("🦆")<CR>
nnoremap <leader>dk :lua require("duck").cook("🦆")<CR>

nnoremap <leader>fw <cmd>lua require('telescope.builtin').grep_string({search = vim.fn.expand("<cword>")})<cr>

lua << END
vim.api.nvim_set_keymap("", "<leader>y", '"+y', { silent = true })
END

nnoremap <leader>do :DiffviewOpen 
nnoremap <leader>dc :DiffviewClose<CR>

lua << EOF
require('Comment').setup()
EOF

set fillchars+=diff:╱
