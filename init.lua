-- Lazy.vim
require('keithdrhm')

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
vim.keymap.set("n", "<leader>pb", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pp", [["0p]])

vim.o.title = true
-- line numbers
vim.wo.number = true
vim.opt.cursorline = true
vim.o.cmdheight = 1

-- down with mouse addiction
vim.opt.mouse = ''

return require('lazy').setup('plugins')

