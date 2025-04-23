local api = vim.api

-- Format on save
api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.js", "*.jsx", "*.ts", "*.tsx", "*.json", "*.html", "*.css", "*.md" },
  callback = function()
    vim.lsp.buf.format({ async = false })
  end,
})
