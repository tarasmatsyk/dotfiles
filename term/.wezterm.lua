-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
-- window size
config.initial_cols = 110
config.initial_rows = 25

-- For example, changing the color scheme:
config.color_scheme = 'iceberg-dark'

-- shell config
config.default_prog = { '/opt/homebrew/bin/fish', '-l'}

-- and finally, return the configuration to wezterm
return config
