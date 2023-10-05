return {
  ------------
  -- search
  ------------
 {
   'nvim-telescope/telescope.nvim', tag = '0.1.3',
    -- or,                          branch = '0.1.x',
    dependencies  = { {'nvim-lua/plenary.nvim'} }
  },

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
  {
    'mhartington/oceanic-next',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme OceanicNext]])
    end,
  },
  'vim-airline/vim-airline',
  'vim-airline/vim-airline-themes'
}
