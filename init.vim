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

" Identline Configuration
let g:indentLine_char = ''
let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0

" Utilsnip
let g:UtilSnipsExpandTrigger='<tab>'
