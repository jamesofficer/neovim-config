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
      "<cmd>:ToggleTerm size=" .. tostring(0.3 * vim.o.columns) .. " direction=vertical<cr>",
      "Open Vertical Terminal",
    },
  },
}, { prefix = "<leader>" })

----------------
-- Null LS
local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettierd,
  },
})
