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
	--hardtime
  ---------------------------------
  {
   "m4xshen/hardtime.nvim",
   dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
   opts = {}
  },
  ---------------------------------
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
   {
      'sainnhe/gruvbox-material',
      lazy = false,
      priority = 1000,
      config = function()
        -- Optionally configure and load the colorscheme
        -- directly inside the plugin declaration.
        vim.g.gruvbox_material_enable_italic = true
	vim.g.gruvbox_material_background = 'hard'
	vim.g.gruvbox_material_enable_bold = true
        vim.cmd.colorscheme('gruvbox-material')
      end
  },
  'vim-airline/vim-airline',
  'vim-airline/vim-airline-themes',
  {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      -- config
      theme = 'hyper',
    config = {
      week_header = {
       enable = true,
      },
      shortcut = {
        { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
        {
          icon = ' ',
          icon_hl = '@variable',
          desc = 'Files',
          group = 'Label',
          action = 'Telescope find_files',
          key = 'f',
        },
        {
          desc = ' Apps',
          group = 'DiagnosticHint',
          action = 'Telescope app',
          key = 'a',
        },
        {
          desc = ' dotfiles',
          group = 'Number',
          action = 'Telescope dotfiles',
          key = 'd',
        },
      },
    },
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
},
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
