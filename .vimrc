set number
exec "set listchars=tab:\uBB.,trail:_"
set list
set cursorline
syntax enable
call plug#begin()

Plug 'vim-syntastic/syntastic'
Plug 'alexandregv/norminette-vim'

Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

call plug#end()
