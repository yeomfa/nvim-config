vim.g.indentLine_fileTypeExclude = { 'dashboard' }
local dash = require("dashboard")
local jet_config = require("jetConfig")
local header = jet_config.header
dash.custom_center = {
  {
    icon = "  ",
    desc = "Find files      ",
    shortcut = " SPC ff ",
    action = "Telescope find_files",
  },
	{
		icon = "  ",
		desc = "Recent files    ",
		shortcut = " SPC fr ",
		action = "Telescope oldfiles",
	},
	{
		icon = "פּ  ",
		desc = "Open tree       ",
		shortcut = " SPC e  ",
		action = "NvimTreeToggle",
	},
	{
		icon = "  ",
		desc = "Exit            ",
		shortcut = " SPC q  ",
		action = "q",
	},
} 

dash.custom_header = header


dash.custom_footer = {"", "", " Hello Jet!", "", "v0.0.0"}
