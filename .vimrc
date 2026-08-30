syntax on "for syntax

set title "show title in statusbar
set nocompatible "be iMproved, required
set noswapfile "disable creating swp file
set nowrap "dont wrap large lines
set ttyfast " faster redrawing

set noerrorbells "off audio error bells
set visualbell "off visual error bells
set t_vb= "off visual error bell"

set number "to show numbers
set shell=zsh "on shell, which shell to use
set showcmd "Show partial commands in the last line of the screen
set mouse=a "enable mouse support for Vim
set laststatus=2 "Always display the status line, even if only one window is displayed
set scrolloff=3 "lines of text around cursor
set cmdheight=1 "command bar height
set hidden "current buffer can be put into the background without closing
set nolazyredraw "don't redraw while executing macros
set showmatch "show matching braces
set noshowmode "don't show which mode disabled for PowerLine
set autoread "detect when a file is changed
set tm=500 "timeout length of key combination presses
set mat=2 " how many tenths of a second to blink

set autoindent "enable auto indent
set smartindent "enable smart indent

set incsearch "enable increment search
set ignorecase "enable ignore case
set smartcase "when using caps, ignore ic
set hlsearch "highlight search
set paste " pegar sin identacion


" Tab control
set expandtab " tabs ftw
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4 " the visible width of tabs
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'

" Better command-line completion
set wildmode=longest,list
set wildmenu

" yanking will paste directly to the clipboard
set clipboard=unnamedplus" Set the command window height to 2 lines, to avoid many cases of having to
" press <Enter> to continue"
set cmdheight=2
" set paste toggle
set pastetoggle=<leader>v
set term=screen-256color " required for tmux

" Para el home y end; no se malinterprete como texto en lugar de secuencia de
" escape
map <Home> ^
imap <Home> <C-O>^

" Folding
set foldmethod=syntax
set foldcolumn=1
set foldlevelstart=20
let g:vim_markdown_folding_disabled=1 " Markdown
let javaScript_fold=1                 " JavaScript
let perl_fold=1                       " Perl
let php_folding=1                     " PHP
let r_syntax_folding=1                " R
let ruby_fold=1                       " Ruby
let sh_fold_enabled=1                 " sh
let vimsyn_folding='af'               " Vim script
let xml_syntax_folding=1              " XML
autocmd BufRead,BufNewFile *.cql set filetype=cql
" Except Markdown
autocmd FileType mkd set sw=4
autocmd FileType mkd set sts=4

" To list special characters
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,nbsp:+
set listchars+=trail:-
set showbreak=↪

set cursorline "show cursor line"

colorscheme elflord

let mapleader="," " mapping leader


" CUSTOM KEY BINDINGS
let mapleader="," " mapping leader
"Map <C-L> (redraw screen) to also turn off search highlighting until the next search
nnoremap <leader>L :nohl<CR>
" custom command to show unprintable characters
nnoremap <leader>l :set list!<cr>
" toggle cursor line
nnoremap <leader>i :set cursorline!<cr>
" to write as root
noremap <leader>W :w !sudo tee % > /dev/null
" <Leader>q: Quit all, very useful in vimdiff
nnoremap <Leader>q :qa<cr>
" _ : Quick horizontal splits
nnoremap _ :new<cr>
" | : Quick vertical splits
nnoremap <bar> :vnew<cr>
" quickly edit new file
nnoremap <leader>e : enew<cr>
" buffer delete
nnoremap <leader>d :bd!<cr>
nnoremap <leader>D :%bd!<cr>
" compare split windows
nnoremap <leader>c :windo diffthis<cr>
nnoremap <leader>C :windo diffoff<cr>
" move to current directory
nnoremap sc :lcd %:p:h<cr>
" remove lines
nnoremap <leader>G :g//d<CR>
nnoremap <leader>V :v//d<CR>
nnoremap <leader>S :%s///g<CR>
" copy current relative file path
nnoremap <leader>cf :let @*=expand("%")<CR>
" lgrep
nnoremap <Leader>r :silent lgrep<Space>
nnoremap <Leader>R :silent lgrep <C-r><C-w><cr>
" to resize windows
nmap <leader>vs :vertical resize +10<cr>
nmap <leader>hs :resize +10<cr>
" switch between current and last buffer
nmap <space>. <c-^>
" quickly open quick fix
nmap <space>q : copen<cr>
nmap <space>Q : cclose<cr>
" when in visual mode, search for selected text
vnoremap // y/<C-R>"<CR>
" remove all trailing spaces
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
map <Leader> <Plug>(easymotion-prefix)

nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)


call plug#begin()

" List your plugins here
Plug 'tpope/vim-sensible'

" color schemes
Plug 'altercation/vim-colors-solarized'
Plug 'joshdick/onedark.vim'
Plug 'tomasr/molokai'
Plug 'dracula/vim'
Plug 'rakr/vim-one'

" Plug 'preservim/nerdtree'

" airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plug 'ryanoasis/vim-devicons'

call plug#end()

 air-line settings
 let g:airline_theme='dark'
 let g:airline#extensions#tabline#enabled = 1
 let g:airline#extensions#tabline#left_sep = ' '
 let g:airline#extensions#tabline#left_alt_sep = '|'
 let g:table_mode_corner_corner="+"
 let g:table_mode_header_fillchar="="
 let g:airline_powerline_fonts = 1
 if !exists('g:airline_symbols')
     let g:airline_symbols = {}
     endif

 gui settings
 if has("gui_running")
   "set guifont=Meslo\ LG\ S\ DZ\ Regular\ for\ Powerline:h14
     "set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\
     Types:h14
       set guifont=MesloLGSDZNerdFontComplete-Regular:h16
         set guioptions-=m  "remove menu bar
           set guioptions-=T  "remove toolbar
             set guioptions-=r  "remove right-hand scroll bar
               set guioptions-=L  "remove left-hand scroll bar
               endif

" Parte de la stauts bar prueba
               
"set laststatus=2 " Obliga a Vim a mostrar la barra siempre
"set statusline=%F " Ruta completa del archivo
"set statusline+=%m " Indicador de si el archivo fue modificado
"set statusline+=%= " Separador (empuja lo que sigue a la derecha)
"set statusline+=%l/%L " Línea actual / Total de líneas
"set statusline+=\ [%p%%] " Porcentaje del archivo

" Para la status bar

call plug#begin()
Plug 'vim-airline/vim-airline'

" Para comentar
Plug 'tpope/vim-commentary'

" Tree
Plug 'lambdalisue/fern.vim'

" Motion
Plug 'easymotion/vim-easymotion'

call plug#end()

" noremap <C-n> :NERDTreeToggle<CR>

" abrir el tree con fern con ctrl+n
nnoremap <C-n> :Fern . -drawer -toggle<CR>

" Prueba para ver si el theme de kitty se sobrepone sobre el fondo de vim
" highlight Normal guibg=none
" highlight NonText guibg=none
" highlight Normal ctermbg=none
" highlight NonText ctermbg=none

highlight Normal guibg=none ctermbg=none
highlight NonText guibg=none ctermbg=none
highlight EndOfBuffer guibg=none ctermbg=none

" highlight FernWindowBackground guibg=none ctermbg=none
" autocmd FileType fern highlight Normal guibg=none ctermbg=none
