local o = vim.o
local wo = vim.wo

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

wo.number = true
vim.opt.clipboard = "unnamedplus"
o.relativenumber = true
o.backup = false
o.mouse = 'a'
o.ignorecase = true
o.smartcase = true
o.hlsearch = false
o.wrap = false
o.breakindent = true
o.shiftwidth = 2
o.tabstop = 2
o.expandtab = true
vim.opt.smarttab = true
o.ai = true
o.si = true
o.backspace = 'start,eol,indent'
vim.opt.scrolloff = 10
vim.opt.shell = 'zsh'
vim.opt.path:append { '**' }
vim.opt.wildignore:append { '*/node_modules/*' }

vim.g.mapleader = " "

o.splitright = true
o.hidden = true
o.lazyredraw = true

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m]"]])
vim.cmd([[let &t_Ce = "\e[4:0m]"]])

-- Disable paste out mode insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = 'set nopaste',
})
