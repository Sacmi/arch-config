call plug#begin()

" FuzzyFinder (для быстрого поиска)
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" NERDTree - быстрый просмотр файлов
Plug 'preservim/nerdtree'
" Сoc - автодополнение 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Дополнения для NERDTree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'preservim/nerdcommenter'
" Дополнение для Git, а также иконки для NERDTree
Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-devicons'
" Линия статуса
Plug 'itchyny/lightline.vim'
" Темы
Plug 'joshdick/onedark.vim'
Plug 'cocopon/iceberg.vim'
" Проверка Синтаксиса
Plug 'scrooloose/syntastic' 
" Плагин автозавершения
"Plug 'Valloric/YouCompleteMe'
" Поддержка Python
"Plug 'klen/python-mode'
"
Plug 'jiangmiao/auto-pairs'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdcommenter'
Plug 'luochen1990/rainbow'
Plug 'sheerun/vim-polyglot'
Plug 'sbdchd/neoformat'
call plug#end()

" Делаем Vim более функциональным
set nocompatible
set t_Co=256

" Делаем линейку для отображения на какой мы строке и сколько расстояния до
" других строк в **NeoVim**
set number
set ruler

" Комбинация клавиш jkl - действует как Escape в режиме Insert
inoremap jkl <ESC>

" Делаем так, чтобы навигация работала на русском языке
nmap о j
nmap л k
nmap р h
nmap д l
nmap ш i
nmap ф a
nmap в d

let mapleader=","

" В нормальном режиме Ctrl+n вызывает :NERDTree
nmap <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeIgnore = ['^node_modules$']

" Тема для **NeoVim**
syntax on
colorscheme iceberg

" Линия статуса: конфигурация
set noshowmode " Табличка --INSERT-- больше не выводится на экран
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'iceberg',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

set smarttab
set expandtab
set softtabstop=4
set shiftwidth=4
