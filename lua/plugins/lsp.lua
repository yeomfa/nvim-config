return {
  'neovim/nvim-lspconfig',
  config = function(_, opts)

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.completion.completionItem.snippetSupport = true

    require('lspconfig').ts_ls.setup {
      capabilities = capabilities,
      filetypes = { 'typescript', 'typescriptreact', 'typescript.tsx', 'javascript', 'javascriptreact', 'javascript.jsx' },
      cmd = { 'typescript-language-server', '--stdio' },
      -- root_dir = function(fname)
      --   return root_pattern(fname) or vim.loop.os_homedir()
      -- end;
    }

    require('lspconfig').cssls.setup {
      capabilities = capabilities,
      filetypes = { 'css', 'scss', 'less' },
      cmd = { 'vscode-css-language-server', '--stdio' }
    }

    require('lspconfig').html.setup {
      capabilities = capabilities,
      filetypes = { 'html' },
      cmd = { 'vscode-html-language-server', '--stdio' }
    }

    require('lspconfig').rust_analyzer.setup {
      filetypes = { 'rust' },
      cmd = { 'rust-analyzer' }
    }

    require('lspconfig').phpactor.setup {
      filetypes = { 'php' },
      on_attach = on_attach,
      -- root_dir = function(fname)
      --   return root_pattern(fname) or vim.loop.os_homedir()
      -- end;
    }

  end
}
