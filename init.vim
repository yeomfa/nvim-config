syntax on
set t_Co=256
set cursorline
set encoding=utf-8
set tabstop=2
set sw=1
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

lua require("config/gvbaby")

lua require("config/autopairs")
lua require("config/null-ls")
lua require("config/prettier")
lua require("config/autotag")
lua require("config/lspsaga")
lua require("config/gitsigns")
lua require("config/bufferline")
lua require("config/lualine")
lua require("config/lsp")
lua require("config/dashboard")
lua require("config/nvim_icons")
lua require("config/telescope")
lua require('config/indentline')
lua require('config/cmp')
lua require('config/nvimtree')
lua require('config/treesitter')

lua require('plugins')
lua require('settings')
lua require('keymappings')


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
" let g:UtilSnipsExpandTrigger='<tab>'
" let g:UltiSnipsSnippetDirectories=["UltiSnips", "my-snippets"]

" Coc
" source ~/.config/nvim/lua/config/coc.vim
