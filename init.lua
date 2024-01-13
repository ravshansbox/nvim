vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.mouse = ""
vim.opt.number = true
vim.opt.shiftwidth = 2
vim.opt.showmode = false
vim.opt.smartindent = true
vim.opt.softtabstop = 2
vim.opt.tabstop = 2

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { "nvim-lualine/lualine.nvim", config = true },
})

