local status, telescope = pcall(require, 'telescope')
if (not status) then return end

telescope.setup {
  defaults = {
    prompt_prefix = " ",
    file_ignore_patterns = {
      "node_modules",
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
    }
  },
}
