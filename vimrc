execute pathogen#infect()

" ale confguration
let g:ale_open_list = 1

filetype plugin indent on
syntax enable

" load theme
set background=dark
colorscheme gruvbox

" set line numbers
set number

" Set to auto read when a file is changed from the outside
set autoread

" set paste mode
set paste

" allow jsx in .js files
let g:jsx_ext_required = 0

" allow backspace with del
set backspace=indent,eol,start

" view spaces/tabs
set list
set listchars=tab:▸-,eol:⏎,trail:-

" tabstop + ui settings
set smarttab
set noerrorbells novisualbell
set ruler
set tabstop=2
set shiftwidth=2
set expandtab
set encoding=utf8
try
    lang en_US
catch
endtry

" set filetype indentation rules
autocmd Filetype html setlocal ts=2 sts=2 expandtab autoindent
autocmd Filetype css setlocal ts=2 sts=2 expandtab
autocmd Filetype markdown setlocal ts=4 sts=4 sw=4
autocmd Filetype javascript setlocal ts=2 sts=0 sw=2 expandtab autoindent
autocmd Filetype json setlocal ts=2 sts=2 expandtab
autocmd Filetype python setlocal ts=4 sts=4 sw=4 expandtab smarttab autoindent
autocmd Filetype jade setlocal ts=2 sw=2 expandtab
autocmd Filetype yaml setlocal ts=2 sw=2 expandtab

" javascript eslint-specific config
call ale#linter#Define('javascript', {
\   'name': 'eslint',
\   'executable_callback': 'ale#handlers#eslint#GetExecutable',
\   'command_callback': 'ale#handlers#eslint#GetCommand',
\   'callback': 'ale#handlers#eslint#Handle',
\})
