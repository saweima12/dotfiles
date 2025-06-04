local wez = require("wezterm") --[[@as Wezterm]]
local config = wez.config_builder()

config.font_size = 14
config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }
-- config.enable_tab_bar = false
config.color_scheme = "Catppuccin Macchiato"
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.send_composed_key_when_left_alt_is_pressed = false
config.send_composed_key_when_right_alt_is_pressed = false
config.hyperlink_rules = wez.default_hyperlink_rules()

config.debug_key_events = true
local act = wez.action

config.leader = { key = ";", mods = "CTRL", timeout_milliseconds = 1000 }
config.keys = {
	-- For Close tab
	{ key = "w", mods = "CMD", action = act.CloseCurrentTab({ confirm = false }) },

	-- Disable fn + arrow key translation to shift + arrow for mac
	{ key = "LeftArrow", mods = "SHIFT", action = act.DisableDefaultAssignment },
	{ key = "RightArrow", mods = "SHIFT", action = act.DisableDefaultAssignment },
	{ key = "UpArrow", mods = "SHIFT", action = act.DisableDefaultAssignment },
	{ key = "DownArrow", mods = "SHIFT", action = act.DisableDefaultAssignment },

	-- Disable auto mapping  to <end> for mac
	{ key = "End", action = act.Nop },
	{ key = "End", mods = "NONE", action = act.DisableDefaultAssignment },
	{ key = "End", action = act.DisableDefaultAssignment },
}

config.mouse_bindings = {
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "SUPER",
		action = wez.action.OpenLinkAtMouseCursor,
	},
}

require("bar").apply(config)
require("keybindings").apply(config)

return config
