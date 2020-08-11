call plug#begin('~/.vim/autoload')

Plug 'airblade/vim-gitgutter'
Plug 'keith/swift.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/AutoClose'
Plug 'aserebryakov/vim-todo-lists'
Plug 'derekwyatt/vim-scala'
Plug 'gabrielelana/vim-markdown'
Plug 'dag/vim-fish'
Plug 'vim-ruby/vim-ruby'

call plug#end()

if !exists("g:syntax_on")
    syntax enable
endif

set tabstop=4
set softtabstop=4
set autoindent

set number
set cursorline

set backspace=2 " Hitting backspace deletes the line if you are at the end. "
 
set whichwrap+=<,>,h,l,[,]

" Used with instant markdown preview
filetype plugin on

" Customize markdown plugin
let g:markdown_enable_spell_checking = 0
