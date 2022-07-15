let mapleader="\ "
set sw=2
set relativenumber
set completeopt=menu,menuone,noselect

" THEME
let g:tokyonight_style = "night"
let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]
let g:tokyonight_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000'
\ }
colorscheme tokyonight

lua require('settings')
lua require('keymappings')
lua require('plugins')

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
