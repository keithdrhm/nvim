return {
  {
    "nvim-telescope/telescope.nvim", tag = '0.1.3',
    dependencies = {
      'nvim-lua/plenary.nvim'
    },
    keys = {
      {
        "<leader>gf",
        function()
          require("telescope.builtin").git_files({})
        end,
        desc = "Search within current git repo",
       },
      {
        "<leader>ag",
        function()
          require("telescope.builtin").live_grep({})
        end,
        desc = "Search (ag) from cwd",
      },
      {
        "<C-p>",
        function()
          require("telescope.builtin").find_files({})
        end,
        desc = "Search file name from cwd",
      }
    },
  },
}
