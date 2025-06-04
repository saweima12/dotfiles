local wez = require("wezterm") --[[@as Wezterm]]
local act = wez.action

local helper = require("helper")

local M = {}

M.apply = function(config)
	-- For split panel
	local keys = {
		{
			key = "v",
			mods = "LEADER",
			action = wez.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "s",
			mods = "LEADER",
			action = wez.action.SplitVertical({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "h",
			mods = "LEADER",
			action = wez.action.ActivatePaneDirection("Left"),
		},
		{
			key = "l",
			mods = "LEADER",
			action = wez.action.ActivatePaneDirection("Right"),
		},
		{
			key = "j",
			mods = "LEADER",
			action = wez.action.ActivatePaneDirection("Down"),
		},
		{
			key = "k",
			mods = "LEADER",
			action = wez.action.ActivatePaneDirection("Up"),
		},
		{
			key = "x",
			mods = "LEADER",
			action = wez.action.CloseCurrentPane({ confirm = true }),
		},
		{
			key = "z",
			mods = "LEADER",
			action = wez.action.TogglePaneZoomState,
		},
		{
			key = "[",
			mods = "LEADER",
			action = wez.action.ActivateCopyMode,
		},
		{
			key = "c",
			mods = "LEADER",
			action = wez.action.SpawnTab("CurrentPaneDomain"),
		},
		{
			key = "n",
			mods = "LEADER",
			action = wez.action.ActivateTabRelative(1),
		},
		{
			key = "p",
			mods = "LEADER",
			action = wez.action.ActivateTabRelative(-1),
		},
	}

	config.keys = helper.concat_multiple(config.keys, keys)
end

return M
