local wezterm = require 'wezterm';
local keys = require 'keys';

return {
    font = wezterm.font_with_fallback({
        {
            family="Iosevka Comfy",
            harfbuzz_features={"liga=1", "clig=1"},
        },
        -- {
        --     family="Iosevka Term SS04",
        --     harfbuzz_features={"liga=1", "clig=1"},
        -- },
        "DejaVu Sans",
        "Hack",
        "Noto Sans Bamum",
        "Noto Sans Ol Chiki"
    }),
    font_size = 14,
    disable_default_key_bindings = true,
    enable_tab_bar = false,
    default_cursor_style = "BlinkingBar",
    keys = keys,
    adjust_window_size_when_changing_font_size = false,
    color_scheme = 'Modus-Vivendi',
}
