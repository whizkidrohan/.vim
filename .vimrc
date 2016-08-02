""Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'vim-scripts/upAndDown'
"Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/google.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jceb/vim-orgmode'
Plugin 'rhysd/vim-clang-format'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ
""/Vundle

set mouse=a
set clipboard=unnamed
let mapleader = ","

" Auto update changes without restart
autocmd! bufwritepost .vimrc source %
" Tab navigation made easy!
nmap <C-n> :m +1<CR>
nmap <C-m> :m -2<CR>
nnoremap <Leader>tc :tabc<return>
nnoremap <S-l> :tabn<return>
nnoremap <S-h> :tabp<return>
nnoremap <Leader>te :tabe<space>
map <S-k> <PageUp>
map <S-j> <PageDown>
set number
set colorcolumn=81
highlight ColorColumn ctermbg=223
" Show trailing whitespace
":highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
":match ExtraWhitespace /\s\+$/
" Remove trailing white spaces
autocmd BufWritePre * %s/\s\+$//e
" Force saving that require root
cmap w!! %!sudo tee > /dev/null %
" Makes search casee insensitive
set hlsearch
set ignorecase
set smartcase
set laststatus=2
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
set t_Co=256
" Allow navigation to 1 space after the last char
set tabstop=2 shiftwidth=2 expandtab
set virtualedit=onemore
filetype plugin indent on
syntax on
au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set foldmethod=syntax
set foldlevel=1
"set foldclose=all
hi Folded ctermbg=Black
hi TabLine ctermfg=White ctermbg=DarkGrey
hi TabLineFill ctermfg=LightGrey ctermbg=DarkGrey
"hi TabLineSel ctermfg=White ctermbg=DarkGrey
let g:clang_format#style_options = {
            \ "Standard" : "C++11"}
