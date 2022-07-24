local o = vim.o
local wo = vim.wo

wo.number = true
o.clipboard = "unnamedplus"
o.mouse = 'a'
o.ignorecase = true
o.smartcase = true
o.hlsearch = false
o.wrap = false
o.breakindent = true
o.shiftwidth = 2
vim.opt.expandtab = false

o.splitright = true
o.hidden = true
o.guifont = "Fira Code:h12"
o.lazyredraw = true
