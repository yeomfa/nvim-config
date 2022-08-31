vim.g.indentLine_fileTypeExclude = { 'dashboard' }
local dash = require("dashboard")

dash.preview_file_height = 12
dash.preview_file_width = 80

dash.custom_center = {
	{
		icon = "  ",
		desc = "Find files                           ",
		shortcut = "SPC ff",
		action = "Telescope find_files",
	},
	{
		icon = "  ",
		desc = "Recent files                         ",
		shortcut = "SPC fr",
		action = "Telescope oldfiles",
	},
	{
		icon = "  ",
		desc = "Open tree      	                     ",
		shortcut = "SPC e ",
		action = "NvimTreeToggle",
	},
	{
		icon = "  ",
		desc = "Exit             	                   ",
		shortcut = "SPC q ",
		action = "qa",
	},
}

dash.custom_header = {
[[                                                     ]],
[[                                                     ]],
[[                                                     ]],
[[                                                     ]],
[[                                                     ]],
[[       ██╗   ██╗███████╗ ██████╗ ███╗   ███╗       ]],
[[      ╚██╗ ██╔╝██╔════╝██╔═══██╗████╗ ████║      ]],
[[       ╚████╔╝ █████╗  ██║   ██║██╔████╔██║      ]],
[[        ╚██╔╝  ██╔══╝  ██║   ██║██║╚██╔╝██║      ]],
[[         ██║   ███████╗╚██████╔╝██║ ╚═╝ ██║      ]],
[[          ╚═╝   ╚══════╝ ╚═════╝ ╚═╝     ╚═╝       ]],
[[                    Fast and beauty                  ]],
[[                                                     ]],
}
