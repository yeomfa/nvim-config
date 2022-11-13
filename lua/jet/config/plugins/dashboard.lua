vim.g.indentLine_fileTypeExclude = { 'dashboard' }
local dash = require("dashboard")
local jet_config = require("jet.JetConfig")
local load_header = {}

if jet_config.dashboard.custom then
  load_header = { "", "", "", "", "",  }
  local header = jet_config.dashboard.header

  for _, line in pairs(header) do
    table.insert(load_header, line)
  end
else
  load_header = { "", "", "", "", "",
        "",
        "",
        "    ▀██▀      ██        ",
        "     ██ ██▀▀█ ██▀▀      ",
        "    ██ ██▀▀▀ ██       ",
        "   █▄██ ██▄▄▄ ██▄▄ Nvim ",
        "",
        "",
  }
end

dash.custom_header = load_header

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

dash.custom_footer = {"", "", " Hello Jet!", "", "v0.0.0"}
