source $HOME/.config/nvim/vim-plug/plugins.vim

set nocompatible              " be iMproved, required
filetype off                  " required

nmap <C-n> :NERDTreeToggle<CR>

autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

colorscheme tokyonight
