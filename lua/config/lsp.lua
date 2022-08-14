local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- Typescript and react js
nvim_lsp.tsserver.setup {
  capabilities = capabilities,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript", "javascriptreact", "javascript.jsx" },
  cmd = { "typescript-language-server", "--stdio" }
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

-- Lua
nvim_lsp.sumneko_lua.setup {
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the 'vim' global
        globals = { 'vim' }

      },

      workspace = {
        -- Make the server aware of neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true)
      }
    }
  }
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
}
