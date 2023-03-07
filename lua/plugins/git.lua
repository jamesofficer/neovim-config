return {
  -- Add git blame
  { "f-person/git-blame.nvim" },

  -- Add advanced git search
  {
    "aaronhallaert/ts-advanced-git-search.nvim",
    config = function()
      require("telescope").load_extension("advanced_git_search")
    end,
    dependencies = {
      "nvim-telescope/telescope.nvim",
      -- to show diff splits and open commits in browser (needs to be installed)
      "tpope/vim-fugitive",
    },
  },
}
