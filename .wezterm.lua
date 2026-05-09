-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Font
config.font_size = 16
config.font = wezterm.font {
    family = 'Source Code Pro',
}
config.color_scheme = 'Catppuccin Mocha'

config.enable_wayland = false
config.enable_tab_bar = false
config.window_background_opacity = 0.95

-- Finally, return the configuration to wezterm:
return config
