set number  
exec "set listchars=tab:\uBB.,trail:_"
set list
set cursorline
syntax enable
let g:user42 = 'ynishimu'
let g:mail42 = 'ynishimu@student.42.fr'
call plug#begin()

Plug 'vim-syntastic/syntastic'
Plug 'alexandregv/norminette-vim'

call plug#end()
