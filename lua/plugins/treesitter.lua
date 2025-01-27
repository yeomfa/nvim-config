return {
  'nvim-treesitter/nvim-treesitter',
  version = false,
  lazy = vim.fn.argc(-1) == 0,
  build = ':TSUpdate',
  event = { 'VeryLazy' },
  opts = {
    highlight = { enable = true },
    indent = { enable = true },
    context_comentstring = { enable = true },
    ensure_installed = {
      "bash",
      "html",
      "typescript",
      "javascript",
      "tsx",
      "rust",
      "jsdoc",
      "json",
      "jsonc",
      "lua",
      "luadoc",
      "luap",
      "markdown",
      "markdown_inline",
      "python",
      "regex",
      "toml",
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<C-space>",
        node_incremental = "<C-space>",
        scope_incremental = false,
        node_decremental = "<bs>",
      },
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end
}
