let mapleader="\ "
syntax enable
set sw=2
set relativenumber
set completeopt=menu,menuone,noselect
set background=dark
set termguicolors

" THEME
lua require('config/gruvbox')
colorscheme gruvbox

lua require('settings')
lua require('keymappings')
lua require('plugins')

" Colorizer
lua require'colorizer'.setup()

" EMMET Configuration
let g:user_emmet_mode='n'
let g:user_emmet_leader_key=','
let g:user_emmet_setting={
      \ 'javascript':{
      \ 'extends':'jsx'
  \ }
  \ }

" Utilsnip
let g:UtilSnipsExpandTrigger='<tab>'

" Indentline
let g:indentLine_char_list = [ '⎸' ]
