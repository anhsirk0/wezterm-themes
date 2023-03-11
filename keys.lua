local wezterm  = require 'wezterm'

return {
   {
      key = 'c',
      mods = 'CTRL|SHIFT',
      action = wezterm.action.CopyTo 'ClipboardAndPrimarySelection',
   },
   {
      key = '=',
      mods = 'CTRL',
      action = wezterm.action.IncreaseFontSize,
   },
   {
      key = '-',
      mods = 'CTRL',
      action = wezterm.action.DecreaseFontSize,
   }
}
