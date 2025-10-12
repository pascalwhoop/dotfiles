-- Pull in the wezterm API
local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Spawn a fish shell in login mode
config.default_prog = { "/opt/homebrew/bin/fish", "-l" }
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "RESIZE"

return config
