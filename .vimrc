" Updated 7-5-22

let g:ranger_replace_netrw = 1
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
"set smartindent
set nowrap
set number relativenumber

" Shortcut Re-Maps ------
map <C-H> gT
map <C-L> gt

" Status bar stuff ------
set laststatus=2
set statusline =%7*[%n]%*
set statusline +=%1*%F\ %*%8*%m%r%*%1*%h%w%* 
set statusline +=%7*\|%*

set statusline +=%7*\|%*
set statusline+=%2*\ ASCII:%b\ %*  " ascii 
set statusline +=%7*\|%*
set statusline+=%2*\ row:%l/%*%1*%L%*%2*\ %*%1*%p%%%*%2*\ \ col:%v\ %*
set statusline +=%7*\|%*

" Show top tab bar always - That way we can see filename at top
set showtabline=2

colorscheme slate 
syntax on
:highlight Comment ctermfg=blue

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" reset the cursor on start (for older versions of vim, usually not required)
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END

"autocmd BufReadPost,FileReadPost,BufNewFile * call system("tmux rename-window" . expand("%"))

call plug#begin()

Plug 'francoiscabrol/ranger.vim'
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

call plug#end()
