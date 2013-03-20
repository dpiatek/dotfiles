" Pathogen
execute pathogen#infect()

" Powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

set nocompatible          " get rid of Vi compatibility mode
filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]
set t_Co=256              " enable 256-color mode
syntax enable             " enable syntax highlighting
colorscheme desert        " set colorscheme
set number                " show line numbers
set laststatus=2          " last window always has a statusline
set encoding=utf-8        " set encoding to utf-8
set incsearch             " highlight as you type your search
set hlsearch              " highlight search results
set ignorecase            " make searches case-insensitive
set ruler                 " always show info along bottom
set autoindent            " auto-indent
set smartindent           " smart-indent
set tabstop=2             " tab spacing
set softtabstop=2         " tabs in insert mode
set shiftwidth=2          " indent/outdent by 2 columns
set expandtab             " use spaces instead of tabs
set smarttab              " be smart about tabs

let mapleader = ","

" lots of stuff from http://amix.dk/vim/vimrc.html

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.* :call DeleteTrailingWS()

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

" CtrlP Settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

set wildignore+=*/tmp/*,*/.sass-cache/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

