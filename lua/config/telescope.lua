require('telescope').setup {
  defaults = {
    prompt_prefix = " ",
    file_ignore_patterns = {
      "node_modules",
    },
  },
  pickers = {
    buffers = {
      sort_lastused = true,
      theme = "dropdown",
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
      theme = "dropdown",
      previewer = false,
    }
  },
}
