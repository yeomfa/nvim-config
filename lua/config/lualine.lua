local colors = {
  blue = '#149EE4',
  red = '#d1493f',
  grey = '#a0a1a7',
  black = '#10121B',
  white = '#d1d1d1',
  whitesmoke = '#a8a8a8',
  bg = '#181b20',
  bg_d = "#0e1013",
  light_green = '#83a598',
  orange = '#fe8019',
  green = '#66CC66',
}

local theme = {
  normal = {
    a = { fg = colors.black, bg = colors.blue },
    b = { fg = colors.whitesmoke, bg = colors.bg_d },
    c = { fg = colors.whitesmoke, bg = colors.bg },
    z = { fg = colors.white, bg = colors.black },
  },
  insert = { a = { fg = colors.black, bg = colors.green } },
  visual = { a = { fg = colors.black, bg = colors.red } },
  replace = { a = { fg = colors.black, bg = colors.light_green } },
}

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = theme,
    component_separators = { left = '▏', right = '▏'},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      'packer',
      'NvimTree',
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 100,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
