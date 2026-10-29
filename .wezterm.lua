local wezterm = require 'wezterm'

local config = wezterm.config_builder()

-- config.color_scheme = 'Macintosh (base16)'
config.color_scheme = 'Bright (base16)'

config.initial_cols = 110
config.initial_rows = 25

config.font_size = 9


config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = false
config.use_fancy_tab_bar = false
config.show_new_tab_button_in_tab_bar = false
config.tab_max_width = 999

config.default_prog = { 'pwsh.exe' }

return config
