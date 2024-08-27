-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.colors = {}
config.colors.background = "#161616"
-- config.color_scheme = "MaterialDark"
config.color_scheme = "OneHalfDark"
config.enable_wayland = false
config.force_reverse_video_cursor = true

config.font = wezterm.font("Iosevka NF Medium")
config.font_size = 14
config.freetype_load_target = "HorizontalLcd"

-- default is true, has more "native" look
config.use_fancy_tab_bar = false

-- I don't like putting anything at the ege if I can help it.
config.enable_scroll_bar = false
config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true
config.warn_about_missing_glyphs = false

local act = wezterm.action
config.keys = {
	{
		key = "h",
		mods = "CTRL|SHIFT",
		action = act.ActivatePaneDirection("Left"),
	},
	{
		key = "l",
		mods = "CTRL|SHIFT",
		action = act.ActivatePaneDirection("Right"),
	},
	{
		key = "k",
		mods = "CTRL|SHIFT",
		action = act.ActivatePaneDirection("Up"),
	},
	{
		key = "j",
		mods = "CTRL|SHIFT",
		action = act.ActivatePaneDirection("Down"),
	},
}

-- and finally, return the configuration to wezterm
return config
