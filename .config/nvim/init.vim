set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Nerdtree - Explorer
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Fuzzy Finder
Plugin 'ctrlpvim/ctrlp.vim'

" Distraction Free Mode
Plugin 'junegunn/goyo.vim'

" Make statusline look like not-crap
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Toggle code comments using 'gcc'
Plugin 'tomtom/tcomment_vim'

" Easy word jump with \\w and \\b
Plugin 'easymotion/vim-easymotion'

" git integration
Plugin 'airblade/vim-gitgutter'

" Autocomplete
Plugin 'Shougo/deoplete.nvim'

" Syntax Checking
Plugin 'vim-syntastic/syntastic'

Bundle 'wellle/targets.vim'

" Expand region
Plugin 'terryma/vim-expand-region'

" cmake integration
Plugin 'vhdirk/vim-cmake'

" All of your Plugins must be added before the following line
call vundle#end()

"
" vim config
"

" Disable arrow keys :)
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

set number
set relativenumber

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

let mapleader = "\<Space>"


"
" Airline
"

let g:airline_theme='deus'

" 
" NERDTree
"

map <C-n> :NERDTreeToggle<CR>

" Close if only window is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"
" deoplete
"

let g:deoplete#enable_at_startup = 1
set completeopt+=noinsert

call deoplete#custom#option('ignore_case', v:true)

"
" deoplete
"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"
" expand region
"

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
