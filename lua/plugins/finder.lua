return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8', -- or, branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },

  opts = {
    defaults = {
      prompt_prefix = " ",
      selection_caret = "❯ ",
      file_ignore_patterns = {
        "node_modules",
        "target",
      },
      borderchars = {
        prompt = { "─", " ", " ", " ", "─", "─", " ", " " },
        results = { " " },
        preview = { " " },
      },
    },
    pickers = {
      buffers = {
        sort_lastused = true,
        theme = "cursor",
        previewer = false,
        mappings = {
          i = {
            ["<c-d>"] = require("telescope.actions").delete_buffer,
          },
          n = {
            ["<c-d>"] = require("telescope.actions").delete_buffer,
          }
        }
      },
      find_files = {
        theme = "cursor",
        previewer = false,
      },
    },
  },

  config = function(_, opts)
    require('telescope').setup(opts)
  end
}
