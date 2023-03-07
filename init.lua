-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

----------------
-- Which Key
local wk = require("which-key")

wk.register({
  t = {
    name = "Terminal",
    t = { "<cmd>:ToggleTermToggleAll<cr>", "Toggle All Terminals" },
    f = { "<cmd>:ToggleTerm direction=float<cr>", "Open Floating Terminal" },
    v = {
      "<cmd>:ToggleTerm size=" .. tostring(0.4 * vim.o.columns) .. " direction=vertical<cr>",
      "Open Vertical Terminal",
    },
  },
}, { prefix = "<leader>" })

wk.register({
  h = {
    name = "Harpoon",
    t = { "<cmd>lua require('harpoon.mark').toggle_file()<cr>", "Toggle file" },
    l = { "<cmd>Telescope harpoon marks<cr>", "List all marked files" },
  },
}, { prefix = "<leader>" })
