local wezterm = require 'wezterm';

return {
    font = wezterm.font_with_fallback({
        {
            family="Iosevka Comfy",
            harfbuzz_features={"liga=1", "clig=1"},
        },
        {family="Hack"},
    }),
    font_antialias = "Subpixel",
    font_size = 14,
    disable_default_key_bindings = true,
    enable_tab_bar = false,
    default_cursor_style = "BlinkingBar",
    color_scheme = 'Ef-Cherie',
}
