require('onedark').setup  {
    -- Main options --
    style = 'darker', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
    transparent = false,  -- Show/hide background
    term_colors = false, -- Change terminal color as per the selected theme style
    ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
    cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
    -- toggle theme style ---
    toggle_style_key = '<leader>ts', -- Default keybinding to toggle
    toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

    -- Change code style ---
    -- Options are italic, bold, underline, none
    -- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
    code_style = {
        comments = 'italic',
        keywords = 'italic',
        functions = 'italic',
        strings = 'italic',
        variables = 'none'
    },

    -- Custom Highlights --
    colors = {
      black = "#0e1013",
      bg0 = "#1f2329",
      bg1 = "#282c34",
      bg2 = "#30363f",
      bg3 = "#323641",
		  bg_d = "#181b20", 
      bg_blue = "#61afef",
	  	bg_yellow = "#e8c88c",
	  	fg = "#B9C1CB",
	  	purple = "#53B8E4",
	  	green = "#66CC66",
	  	orange = "#ed8d4e",
	  	blue = "#149EE4",
	  	yellow = "#C184F0",
	  	cyan = "#48b0bd",
	  	red = "#E52451",
	  	grey = "#7D829B",
	  	light_grey = "#7a818e",
	  	dark_cyan = "#266269",
	  	dark_red = "#8b3434",
	  	dark_yellow = "#835d1a",
	  	dark_purple = "#D76EF7",
	  	diff_add = "#272e23",
	  	diff_delete = "#2d2223",
	  	diff_change = "#172a3a",
	  	diff_text = "#274964",
    },
    highlights = {
      -- TSKeyword = {fg = '$green'},
      -- TSString = {fg = '$green', fmt = 'bold'},
      -- TSFunction = {fg = '#ebdbb2', fmt = 'italic'},
      -- TSComment= {fg = '$bg3', fmt = 'italic'},
    },

    -- Plugins Config --
    diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true,   -- use undercurl instead of underline for diagnostics
        background = true,    -- use background color for virtual text
    },
}
