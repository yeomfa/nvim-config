local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end
local util = require 'lspconfig/util'

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local root_pattern = util.root_pattern("package.json")

-- Typescript and react js
nvim_lsp.tsserver.setup {
  capabilities = capabilities,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript", "javascriptreact", "javascript.jsx" },
  cmd = { "typescript-language-server", "--stdio" },
  root_dir = function(fname)
    return root_pattern(fname) or vim.loop.os_homedir()
  end;
}

-- Css
nvim_lsp.cssls.setup {
  capabilities = capabilities,
  filetypes = { "css", "scss", "less" },
  cmd = { "vscode-css-language-server", "--stdio" }
}

-- html
nvim_lsp.html.setup {
  capabilities = capabilities,
  filetypes = { "html" },
  cmd = { "vscode-html-language-server", "--stdio" }
}

-- Python
nvim_lsp.pyright.setup {
  filetypes = { "python" },
  cmd = { "pyright-langserver", "--stdio" }
}

-- C
nvim_lsp.ccls.setup {
  filetypes = { "c", "cpp", "objc", "objcpp" },
  cmd = { 'ccls' },
  root_dir = function(fname)
    return root_pattern(fname) or vim.loop.os_homedir()
  end;
}

-- Rust
nvim_lsp.rust_analyzer.setup {
  filetypes = { "rust" },
  cmd = { 'rust-analyzer' }
}
