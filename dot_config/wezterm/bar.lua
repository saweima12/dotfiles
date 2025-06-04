local wez = require("wezterm") --[[@as Wezterm]]
local bar = wez.plugin.require("https://github.com/adriankarlen/bar.wezterm")

local M = {}

M.apply = function(config)
	bar.apply_to_config(config, {
		position = "top",
		max_width = 60,
		padding = {
			left = 2,
			right = 2,
			tabs = {
				left = 1,
				right = 3,
			},
		},
		separator = {
			space = 1,
			left_icon = "",
			right_icon = wez.nerdfonts.cod_arrow_left,
			field_icon = "|",
		},
		modules = {
			tabs = {
				active_tab_fg = 4,
				inactive_tab_fg = 6,
				new_tab_fg = 2,
			},
			workspace = {
				enabled = false,
				icon = wez.nerdfonts.cod_window,
				color = 8,
			},
			leader = {
				enabled = true,
				icon = wez.nerdfonts.oct_rocket,
				color = 2,
			},
			zoom = {
				enabled = false,
				icon = wez.nerdfonts.md_fullscreen,
				color = 4,
			},
			pane = {
				enabled = false,
				icon = wez.nerdfonts.cod_multiple_windows,
				color = 7,
			},
			username = {
				enabled = false,
				icon = wez.nerdfonts.fa_user,
				color = 6,
			},
			hostname = {
				enabled = false,
				icon = wez.nerdfonts.cod_server,
				color = 8,
			},
			clock = {
				enabled = true,
				icon = wez.nerdfonts.md_calendar_clock,
				format = "%H:%M",
				color = 5,
			},
			cwd = {
				enabled = true,
				icon = wez.nerdfonts.oct_file_directory,
				color = 7,
			},
			spotify = {
				enabled = false,
				icon = wez.nerdfonts.fa_spotify,
				color = 3,
				max_width = 64,
				throttle = 15,
			},
		},
	})
end

return M
