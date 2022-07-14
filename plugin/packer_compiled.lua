-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/yeom/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/yeom/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/yeom/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/yeom/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/yeom/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\2�\19\0\0\6\0?\0_6\0\0\0009\0\1\0'\1\2\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\1\5\0005\2\6\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\1\a\0005\2\b\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\1\t\0005\2\n\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\1\v\0005\2\f\0B\0\3\0016\0\r\0'\1\14\0B\0\2\0029\0\15\0005\1\16\0005\2\18\0005\3\17\0=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\0025\3\26\0=\3\27\0025\3\29\0005\4\28\0=\4\30\3=\3\31\2=\2 \0015\2!\0005\3\"\0=\3#\0025\3%\0005\4$\0=\4&\0035\4'\0005\5(\0=\5)\4=\4*\3=\3+\2=\2,\0014\2\0\0=\2-\0015\0022\0005\3.\0004\4\0\0=\4/\0034\4\0\0=\0040\0034\4\0\0=\0041\3=\0033\0025\0035\0005\0044\0=\4+\3=\3,\2=\0026\0015\0027\0005\0039\0005\0048\0=\4+\3=\3,\2=\2:\0015\2=\0005\3;\0005\4<\0=\4+\3=\3,\2=\2\31\1B\0\2\0016\0\0\0009\0\1\0'\1>\0B\0\2\1K\0\1\0#nnoremap \\ :Neotree reveal<cr>\1\0\0\1\0\a\agu\21git_unstage_file\6A\16git_add_all\agc\15git_commit\agr\20git_revert_file\aga\17git_add_file\agg\24git_commit_and_push\agp\rgit_push\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\6.\rset_root\t<bs>\16navigate_up\abd\18buffer_delete\1\0\3\18show_unloaded\2\24follow_current_file\2\21group_empty_dirs\2\15filesystem\1\0\0\1\0\t\n<c-x>\17clear_filter\6H\18toggle_hidden\t<bs>\16navigate_up\a]g\22next_git_modified\6/\17fuzzy_finder\a[g\22prev_git_modified\6D\27fuzzy_finder_directory\6.\rset_root\6f\21filter_on_submit\19filtered_items\1\0\4\26hijack_netrw_behavior\17open_default\27use_libuv_file_watcher\1\21group_empty_dirs\1\24follow_current_file\1\15never_show\20hide_by_pattern\17hide_by_name\1\0\4\16hide_hidden\2\20hide_gitignored\2\fvisible\1\18hide_dotfiles\2\18nesting_rules\vwindow\rmappings\6a\vconfig\1\0\1\14show_path\tnone\1\2\0\0\badd\f<space>\1\0\19\6p\25paste_from_clipboard\6d\vdelete\6C\15close_node\6w\28open_with_window_picker\18<2-LeftMouse>\topen\6o\topen\6q\17close_window\6R\frefresh\6A\18add_directory\6m\tmove\6t\16open_tabnew\6z\20close_all_nodes\6?\14show_help\6r\vrename\6s\16open_vsplit\6c\tcopy\6y\22copy_to_clipboard\6S\15open_split\6x\21cut_to_clipboard\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\vnowait\2\fnoremap\2\1\0\2\rposition\tleft\nwidth\3\30\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\fignored\b\fdeleted\b✖\nadded\5\rconflict\b\frenamed\b\vstaged\b\runstaged\b\14untracked\b\rmodified\5\tname\1\0\3\19trailing_slash\1\14highlight\20NeoTreeFileName\26use_git_status_colors\2\rmodified\1\0\2\vsymbol\b[+]\14highlight\20NeoTreeModified\ticon\1\0\5\fdefault\6*\17folder_empty\bﰊ\14highlight\20NeoTreeFileIcon\16folder_open\b\18folder_closed\b\vindent\1\0\t\23expander_highlight\20NeoTreeExpander\23expander_collapsed\5\14highlight\24NeoTreeIndentMarker\23last_indent_marker\b└\22expander_expanded\5\18indent_marker\b│\17with_markers\2\16indent_size\3\2\fpadding\3\1\14container\1\0\0\1\0\1\26enable_character_fade\2\1\0\5\25close_if_last_window\1\23popup_border_style\frounded\26sort_case_insensitive\1\22enable_git_status\2\23enable_diagnostics\2\nsetup\rneo-tree\frequire\1\0\2\ttext\b\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\t \vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\2\ttext\t \vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\t \vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn0 let g:neo_tree_remove_legacy_commands = 1 \bcmd\bvim\0" },
    loaded = true,
    path = "/home/yeom/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/yeom/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/yeom/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["nvim-window-picker"] = {
    config = { "\27LJ\2\2�\1\0\0\5\0\f\0\0156\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\t\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\3=\3\n\2=\2\v\1B\0\2\1K\0\1\0\17filter_rules\abo\1\0\0\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\5\0\0\rneo-tree\19neo-tree-popup\vnotify\rquickfix\1\0\3\23other_win_hl_color\f#e35e4f\20include_current\1\19autoselect_one\2\nsetup\18window-picker\frequire\0" },
    loaded = true,
    path = "/home/yeom/.local/share/nvim/site/pack/packer/start/nvim-window-picker",
    url = "https://github.com/s1n7ax/nvim-window-picker"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/yeom/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/yeom/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
try_loadstring("\27LJ\2\2�\19\0\0\6\0?\0_6\0\0\0009\0\1\0'\1\2\0B\0\2\0016\0\0\0009\0\3\0009\0\4\0'\1\5\0005\2\6\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\1\a\0005\2\b\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\1\t\0005\2\n\0B\0\3\0016\0\0\0009\0\3\0009\0\4\0'\1\v\0005\2\f\0B\0\3\0016\0\r\0'\1\14\0B\0\2\0029\0\15\0005\1\16\0005\2\18\0005\3\17\0=\3\19\0025\3\20\0=\3\21\0025\3\22\0=\3\23\0025\3\24\0=\3\25\0025\3\26\0=\3\27\0025\3\29\0005\4\28\0=\4\30\3=\3\31\2=\2 \0015\2!\0005\3\"\0=\3#\0025\3%\0005\4$\0=\4&\0035\4'\0005\5(\0=\5)\4=\4*\3=\3+\2=\2,\0014\2\0\0=\2-\0015\0022\0005\3.\0004\4\0\0=\4/\0034\4\0\0=\0040\0034\4\0\0=\0041\3=\0033\0025\0035\0005\0044\0=\4+\3=\3,\2=\0026\0015\0027\0005\0039\0005\0048\0=\4+\3=\3,\2=\2:\0015\2=\0005\3;\0005\4<\0=\4+\3=\3,\2=\2\31\1B\0\2\0016\0\0\0009\0\1\0'\1>\0B\0\2\1K\0\1\0#nnoremap \\ :Neotree reveal<cr>\1\0\0\1\0\a\agu\21git_unstage_file\6A\16git_add_all\agc\15git_commit\agr\20git_revert_file\aga\17git_add_file\agg\24git_commit_and_push\agp\rgit_push\1\0\1\rposition\nfloat\fbuffers\1\0\0\1\0\3\6.\rset_root\t<bs>\16navigate_up\abd\18buffer_delete\1\0\3\18show_unloaded\2\24follow_current_file\2\21group_empty_dirs\2\15filesystem\1\0\0\1\0\t\n<c-x>\17clear_filter\6H\18toggle_hidden\t<bs>\16navigate_up\a]g\22next_git_modified\6/\17fuzzy_finder\a[g\22prev_git_modified\6D\27fuzzy_finder_directory\6.\rset_root\6f\21filter_on_submit\19filtered_items\1\0\4\26hijack_netrw_behavior\17open_default\27use_libuv_file_watcher\1\21group_empty_dirs\1\24follow_current_file\1\15never_show\20hide_by_pattern\17hide_by_name\1\0\4\16hide_hidden\2\20hide_gitignored\2\fvisible\1\18hide_dotfiles\2\18nesting_rules\vwindow\rmappings\6a\vconfig\1\0\1\14show_path\tnone\1\2\0\0\badd\f<space>\1\0\19\6p\25paste_from_clipboard\6d\vdelete\6C\15close_node\6w\28open_with_window_picker\18<2-LeftMouse>\topen\6o\topen\6q\17close_window\6R\frefresh\6A\18add_directory\6m\tmove\6t\16open_tabnew\6z\20close_all_nodes\6?\14show_help\6r\vrename\6s\16open_vsplit\6c\tcopy\6y\22copy_to_clipboard\6S\15open_split\6x\21cut_to_clipboard\1\2\1\0\16toggle_node\vnowait\1\20mapping_options\1\0\2\vnowait\2\fnoremap\2\1\0\2\rposition\tleft\nwidth\3\30\30default_component_configs\15git_status\fsymbols\1\0\0\1\0\t\fignored\b\fdeleted\b✖\nadded\5\rconflict\b\frenamed\b\vstaged\b\runstaged\b\14untracked\b\rmodified\5\tname\1\0\3\19trailing_slash\1\14highlight\20NeoTreeFileName\26use_git_status_colors\2\rmodified\1\0\2\vsymbol\b[+]\14highlight\20NeoTreeModified\ticon\1\0\5\fdefault\6*\17folder_empty\bﰊ\14highlight\20NeoTreeFileIcon\16folder_open\b\18folder_closed\b\vindent\1\0\t\23expander_highlight\20NeoTreeExpander\23expander_collapsed\5\14highlight\24NeoTreeIndentMarker\23last_indent_marker\b└\22expander_expanded\5\18indent_marker\b│\17with_markers\2\16indent_size\3\2\fpadding\3\1\14container\1\0\0\1\0\1\26enable_character_fade\2\1\0\5\25close_if_last_window\1\23popup_border_style\frounded\26sort_case_insensitive\1\22enable_git_status\2\23enable_diagnostics\2\nsetup\rneo-tree\frequire\1\0\2\ttext\b\vtexthl\23DiagnosticSignHint\23DiagnosticSignHint\1\0\2\ttext\t \vtexthl\23DiagnosticSignInfo\23DiagnosticSignInfo\1\0\2\ttext\t \vtexthl\23DiagnosticSignWarn\23DiagnosticSignWarn\1\0\2\ttext\t \vtexthl\24DiagnosticSignError\24DiagnosticSignError\16sign_define\afn0 let g:neo_tree_remove_legacy_commands = 1 \bcmd\bvim\0", "config", "neo-tree.nvim")
time([[Config for neo-tree.nvim]], false)
-- Config for: nvim-window-picker
time([[Config for nvim-window-picker]], true)
try_loadstring("\27LJ\2\2�\1\0\0\5\0\f\0\0156\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\t\0005\3\5\0005\4\4\0=\4\6\0035\4\a\0=\4\b\3=\3\n\2=\2\v\1B\0\2\1K\0\1\0\17filter_rules\abo\1\0\0\fbuftype\1\2\0\0\rterminal\rfiletype\1\0\0\1\5\0\0\rneo-tree\19neo-tree-popup\vnotify\rquickfix\1\0\3\23other_win_hl_color\f#e35e4f\20include_current\1\19autoselect_one\2\nsetup\18window-picker\frequire\0", "config", "nvim-window-picker")
time([[Config for nvim-window-picker]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
