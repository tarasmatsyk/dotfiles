-- Pull in the wezterm API
local wezterm = require 'wezterm'

wezterm.on("gui-startup", function(cmd)
	local screen = wezterm.gui.screens().main
	local x_ratio = 0.6
	local y_ratio = 0.5
	local width, height = screen.width * x_ratio, screen.height * y_ratio
	local tab, pane, window = wezterm.mux.spawn_window(cmd or {
		position = { x = (screen.width - width) / 2, y = (screen.height - height) / 2 },
	})
	-- window:gui_window():maximize()
	window:gui_window():set_inner_size(width, height)
end)

-- This will hold the configuration.
local c = wezterm.config_builder()

-- This is where you actually apply your config choices
-- window size
-- c.initial_cols = 80
-- c.initial_rows = 15
-- c.font_size = 12

-- For example, changing the color scheme:
-- c.color_scheme = 'iceberg-dark'
dark_theme = "Catppuccin Macchiato"
light_theme = "Catppuccin Latte"

local appearance_themes = {
  Light = light_theme,
  Dark = dark_theme,
}

local appearance = wezterm.gui.get_appearance()
-- c.color_scheme = appearance_themes[appearance] or dark_theme
c.color_scheme = dark_theme

-- shell config
c.default_prog = { '/opt/homebrew/bin/fish', '-l'}

-- and finally, return the configuration to wezterm
return c
