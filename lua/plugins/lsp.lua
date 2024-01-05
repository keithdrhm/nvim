local lsp = require('lsp-zero')
local mason = require('mason')
local masonConfig = require('mason-lspconfig')

return{
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {                                      -- Optional
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
   },
  config = function() 
    local cmp = require('cmp')
    local cmp_select = {behavior = cmp.SelectBehavior.Select}
    local cmp_mappings = lsp.defaults.cmp_mappings({
        ['C-p'] = cmp.mapping.select_prev_item(cmp_select),
	['C-n'] = cmp.mapping.select_next_item(cmp_select),
	['C-y'] = cmp.mapping.confirm({select = true}),
	['C-space'] = cmp.mapping.complete(),
    })
    lsp.extend_lspconfig() -- needed to make sure linting works in every directory
    mason.setup()
    masonConfig.setup({
      ensure_installed = {'tsserver', 'eslint', 'rust_analyzer', 'tailwindcss', 'cssls', 'angularls', 'html', 'jsonls', 'biome'},
      handlers = {
        lsp.default_setup
      }
    })
    lsp.setup()
  end
}
