let g:polyglot_disabled = ['jsx']
let mapleader="\ "
syntax on
set t_Co=256
set cursorline
set encoding=utf-8
set sw=2
set relativenumber
set completeopt=menu,menuone,noselect
set background=dark
set nobackup
set nowritebackup

" THEME
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

lua require('config/onedark')
colorscheme onedark

lua require('settings')
lua require('keymappings')
lua require('plugins')
lua require('config/nvimtree')
lua require('config/indentline')
lua require("config/lualine")
lua require("config/cmp")
lua require("config/bufferline")

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

