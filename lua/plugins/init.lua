return {
  ------------
  -- search
  ------------
 {
   'nvim-telescope/telescope.nvim', tag = '0.1.3',
    -- or,                          branch = '0.1.x',
    dependencies  = { {'nvim-lua/plenary.nvim'} }
  },
  ---------------------------------
  -- co-pilot
  ---------------------------------
  'github/copilot.vim',
  -------------------------------
  -- text editing optimizations
  -------------------------------
  -- tab autocomplete
  'ervandew/supertab',
  -- changes surrounding marks `cs"'` will change "foo" to 'foo'
  'tpope/vim-surround',
  -- nerd commenter (bulk commenting out code) 
  'preservim/nerdcommenter',

  --------------------
  -- status outputs
  --------------------
  --git diffs in gutter : TODO configure
  'airblade/vim-gitgutter',

  --------------
  -- linting
  --------------
  'dense-analysis/ale',

  -------------------
  -- style + colors
  -------------------
  'rebelot/kanagawa.nvim',
  'vim-airline/vim-airline',
  'vim-airline/vim-airline-themes',
 -- harpoon used for file marking
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { {"nvim-lua/plenary.nvim"} }
  },
-- Linting
  {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate"
  },
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  'neovim/nvim-lspconfig',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/nvim-cmp',
  'L3MON4D3/LuaSnip',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  --- VIM TIPS
 {
  "TobinPalmer/Tip.nvim",
  event = "VimEnter",
  init = function()
    -- Default config
    --- @type Tip.config
    require("tip").setup({
      seconds = 2,
      title = "Tip!",
      url = "https://vtip.43z.one", -- Or https://vimiscool.tech/neotip
    })
  end,
}
}
