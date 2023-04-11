local wezterm  = require 'wezterm'
local act = wezterm.action

return {
   {
      key = 'c',
      mods = 'SHIFT|CTRL',
      action = act.CopyTo 'ClipboardAndPrimarySelection',
   },
   {
      key = 'v',
      mods = 'SHIFT|CTRL',
      action = act.Paste
   },
   {
      key = '=',
      mods = 'CTRL',
      action = act.IncreaseFontSize,
   },
   {
      key = '-',
      mods = 'CTRL',
      action = act.DecreaseFontSize,
   },
   {
      key = 'X',
      mods = 'SHIFT|CTRL',
      action = act.ActivateCopyMode
   },
   {
    key = 'F',
    mods = 'SHIFT|CTRL',
    action = act.Search { CaseInSensitiveString = '' },
  },

}
