return {
  -- Color Schemes
  { "ellisonleao/gruvbox.nvim" },
  { "sainnhe/sonokai" },
  { "bluz71/vim-moonfly-colors",  name = "moonfly",  lazy = true, priority = 1000 },
  { "bluz71/vim-nightfly-colors", name = "nightfly", lazy = true, priority = 1000 },
  { "neanias/everforest-nvim", name = "everforest", lazy = false, version = false, priority = 1000, config = function()
    require("everforest").setup({
      style = 'day',
      background = 'hard'
    })
  end },

  -- Apply Color Scheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "sonokai",
    },
  },
}
