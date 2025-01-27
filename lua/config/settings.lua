local g = vim.g
local o = vim.o
local wo = vim.wo
local opt = vim.opt

vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'

wo.number = true
opt.clipboard = 'unnamedplus'
o.relativenumber = true

o.backup = false
o.backupcopy = 'yes'

o.mouse = 'a'
o.ignorecase = true
o.smartcase = true

o.hlsearch = false
o.wrap = true
o.linebreak = true
o.breakindent = true

o.shiftwidth = 2
o.tabstop = 2
o.expandtab = true

o.ai = true
o.si = true

o.backspace = 'start,eol,indent'

opt.scrolloff = 10
opt.shell = 'fish'

opt.path:append { '**' }
opt.wildignore:append { '*/node_modules/*' }
o.termguicolors = true
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

o.splitright = true
o.hidden = true
o.lazyredraw = true

-- Undercurl
vim.cmd([[let &t_Cs = '\e[4:3m]']])
vim.cmd([[let &t_Ce = '\e[4:0m]']])

-- Disable paste out mode insert
vim.api.nvim_create_autocmd('InsertLeave', {
  pattern = '+',
  command = 'set nopaste',
})

