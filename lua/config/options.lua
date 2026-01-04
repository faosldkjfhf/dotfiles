vim.opt.relativenumber = true
vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.lsp.set_log_level(vim.log.levels.OFF)

if vim.g.neovide then
  vim.o.guifont = "Maple Mono NF:h16"
  vim.g.neovide_fullscreen = true
end
