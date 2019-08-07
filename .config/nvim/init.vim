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
Plugin 'Valloric/YouCompleteMe'

Bundle 'wellle/targets.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:airline_theme='deus'

" vim config
set number
set relativenumber

