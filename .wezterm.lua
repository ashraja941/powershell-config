local wezterm = require 'wezterm'

return {
    -- Terminal to use
    default_prog = { "pwsh.exe", "-NoLogo" },

    -- Background transparency
    window_background_opacity = 0.45,
    text_background_opacity = 1.0,
    win32_system_backdrop = "Acrylic",

    -- Window decorations
    -- Options : INTEGRATED_BUTTONS, RESIZE, TITLE
    window_decorations = "INTEGRATED_BUTTONS",

    -- Tab bar
    enable_tab_bar = true,
    use_fancy_tab_bar = false,
    hide_tab_bar_if_only_one_tab = false,
    -- tab_bar_at_bottom = true,

    -- Nerd Font setup 
    font = wezterm.font_with_fallback({
        "Hack Nerd Font Mono",
    }),
    font_size = 12,

    -- Color Scheme
    -- color_scheme = "Catppuccin Mocha",

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
        {key="s", mods="CTRL|SHIFT", action=wezterm.action.SplitHorizontal{domain="CurrentPaneDomain"}},
        {key="d", mods="CTRL|SHIFT", action=wezterm.action.SplitVertical{domain="CurrentPaneDomain"}},
        { key = "x", mods = "CTRL|SHIFT", action = wezterm.action.CloseCurrentPane { confirm = false } },

        -- Neovim Style pane switching
        { key = "w", mods = "CTRL", action = wezterm.action.ActivateKeyTable {
            name = "pane_nav",
            timeout_milliseconds = 1000, -- optional: 1s to hit hjkl
            one_shot = true,
        }},

    },

    -- Pane switching
    key_tables = {
        pane_nav = {
            { key = "h", action = wezterm.action.ActivatePaneDirection "Left" },
            { key = "j", action = wezterm.action.ActivatePaneDirection "Down" },
            { key = "k", action = wezterm.action.ActivatePaneDirection "Up" },
            { key = "l", action = wezterm.action.ActivatePaneDirection "Right" },
        },
    },

    -- animations
    animation_fps = 120,
    max_fps = 120,
}
