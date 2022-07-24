require('telescope').setup{
  defaults = {
    prompt_prefix = " ",
  },
  pickers = {
    buffers = {
      sort_lastused = true,
      theme = "cursor",
      previewer = false,
      mappings = {
        i = {
          ["<c-d>"] = require("telescope.actions").delete_buffer,
          -- Right hand side can also be the name of the action as a string
          ["<c-d>"] = "delete_buffer",
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
    -- find_buffers = {
    --   theme = "cursor",
    --   previewer = false,
    -- }
  },
}
