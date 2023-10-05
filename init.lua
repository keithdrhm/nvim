print('drink some water you dyhdrated cucumber')

-- Lazy.vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- General vim mappings --
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)
vim.keymap.set('n', '<C-t>', ':tabnew<CR>');

vim.o.title = true
-- line numbers
vim.wo.number = true
vim.opt.cursorline = true
vim.o.cmdheight = 1
-- tabs and spaces
vim.o.smarttab = true
vim.o.expandtab = true
vim.o.shiftwidth = 2
-- colors
vim.cmd('syntax enable')
--vim.cmd('colorscheme OceanicNext')
-- kill all swap files
vim.opt.swapfile = false

return require('lazy').setup('plugins')

