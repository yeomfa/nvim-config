return {
  'hrsh7th/cmp-nvim-lsp',
  {
    'hrsh7th/nvim-cmp',
    config = function(_, opts)
      local lspkind = require('lspkind')
      local cmp = require('cmp')

      is_format = lspkind.cmp_format({ with_text = false, maxwidth = 50 })

      cmp.setup {
        snippet = {
          -- expand = is_expand
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-d>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.close(),
          ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true
          }),
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp', max_item_count = 10 },
          { name = 'buffer', max_item_count = 10 },
          -- { name = 'luasnip' }
        }),
        formatting = {
            format = is_format 
        }
      }
    end
  },
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'saadparwaiz1/cmp_luasnip',
}
