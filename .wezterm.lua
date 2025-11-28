local wezterm = require 'wezterm'

return {
  default_prog = { "pwsh.exe", "-NoLogo" },

  -- Background transparency
  window_background_opacity = 0.45,
  text_background_opacity = 1.0,
  win32_system_backdrop = "Acrylic",

  -- Minimal window decorations
  window_decorations = "RESIZE",

  -- Correct Nerd Font setup (IMPORTANT)
  font = wezterm.font_with_fallback({
    "Hack Nerd Font Mono",     -- put the strong, fully patched nerd font first
  }),
  font_size = 12,

  -- Required to prevent merged glyphs (CRUCIAL)
  harfbuzz_features = {
    "calt", "liga", "clig",
  },

  -- Tab bar (tmux style)
  enable_tab_bar = true,
  use_fancy_tab_bar = false,
  hide_tab_bar_if_only_one_tab = false,

  -- Custom tab switching bindings
  keys = {
    { key = "1", mods = "CTRL", action = wezterm.action{ ActivateTab = 0 } },
    { key = "2", mods = "CTRL", action = wezterm.action{ ActivateTab = 1 } },
    { key = "3", mods = "CTRL", action = wezterm.action{ ActivateTab = 2 } },
    { key = "4", mods = "CTRL", action = wezterm.action{ ActivateTab = 3 } },
    { key = "5", mods = "CTRL", action = wezterm.action{ ActivateTab = 4 } },
    { key = "6", mods = "CTRL", action = wezterm.action{ ActivateTab = 5 } },
    { key = "7", mods = "CTRL", action = wezterm.action{ ActivateTab = 6 } },
    { key = "8", mods = "CTRL", action = wezterm.action{ ActivateTab = 7 } },
    { key = "9", mods = "CTRL", action = wezterm.action{ ActivateTab = 8 } },
  },
}
