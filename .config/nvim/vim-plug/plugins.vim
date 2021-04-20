call plug#begin('~/.config/nvim/autoload/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'

Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

Plug 'folke/tokyonight.nvim'
let g:tokyonight_style = "night"
let g:tokyonight_sidebars = [ "quickfix", "__vista__", "terminal" ]

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'dense-analysis/ale'
Plug 'vim-syntastic/syntastic'

call plug#end()
