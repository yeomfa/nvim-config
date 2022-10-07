local is_picking_focus = require("cokeline/mappings").is_picking_focus
local is_picking_close = require("cokeline/mappings").is_picking_close
local get_hex = require("cokeline/utils").get_hex

local red = vim.g.terminal_color_1
local yellow = vim.g.terminal_color_4
local space = {text = " "}
local dark = get_hex("Normal", "bg")
local text = get_hex("Comment", "fg")
local grey = get_hex("ColorColumn", "bg")
local light = get_hex("Comment", "fg")
local high = "#7fa2ac"

local comments_fg = get_hex('Comment', 'fg')
local errors_fg = get_hex('DiagnosticError', 'fg')
local warnings_fg = get_hex('DiagnosticWarn', 'fg')

require("cokeline").setup(
  {
    sidebar = {
      filetype = 'NvimTree',
      components = {
        {
          text = '  Folder: ' .. vim.fn.substitute(vim.fn.getcwd(), '^.*/', '', ''),
          fg = high,
          bg = get_hex('NvimTreeNormal', 'bg'),
          style = 'bold',
        },
      }
    },
    default_hl = {
      fg = function(buffer)
        if buffer.is_focused then
          return dark
        end
        return text
      end,
      bg = function(buffer)
        if buffer.is_focused then
          return high
        end
        return grey
      end
    },
    components = {
      {
        text = function(buffer)
          if buffer.index ~= 1 then
            return ""
          end
          return ""
        end,
        bg = function(buffer)
          if buffer.is_focused then
            return high
          end
          return grey
        end,
        fg = dark
      },
      space,
      {
        text = function(buffer)
          if is_picking_focus() or is_picking_close() then
            return buffer.pick_letter .. " "
          end
          return buffer.devicon.icon
        end,
        fg = function(buffer)
          if is_picking_focus() then
            return yellow
          end
          if is_picking_close() then
            return red
          end

          if buffer.is_focused then
            return dark
          else
            return light
          end
        end,
        style = function(_)
          return (is_picking_focus() or is_picking_close()) and "italic,bold" or nil
        end
      },
      {
        text = function(buffer)
          return buffer.unique_prefix .. buffer.filename .. "⠀"
        end,
        style = function(buffer)
          return buffer.is_focused and "bold" or nil
        end
      },
      {
        text = function(buffer)
          return buffer.is_modified and '●' or ''
        end,
        fg = function(buffer)
          return buffer.is_modified and green or nil
        end,
        delete_buffer_on_left_click = true,
        truncation = { priority = 1 },
      },
      space,
      {
        text = "",
        fg = function(buffer)
          if buffer.is_focused then
            return high
          end
          return grey
        end,
        bg = dark
      },
      {
        text = function(buffer)
          return
            (buffer.diagnostics.errors ~= 0 and '  ' .. buffer.diagnostics.errors)
            or (buffer.diagnostics.warnings ~= 0 and '  ' .. buffer.diagnostics.warnings)
            or ''
        end,
        fg = function(buffer)
          return
            (buffer.diagnostics.errors ~= 0 and errors_fg)
            or (buffer.diagnostics.warnings ~= 0 and warnings_fg)
            or nil
        end,
        truncation = { priority = 1 },
      },
  }
  }
)
