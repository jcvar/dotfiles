local wezterm = require 'wezterm'
return {
    font = wezterm.font('JuliaMono');
    font_size = 14.0;
    harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' };
    color_scheme = 'ayu';
}
