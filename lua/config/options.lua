vim.opt.relativenumber = true
vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.title = true
vim.opt.titlestring = "%<%F %l:%L"
vim.opt.showtabline = 2
vim.lsp.set_log_level(vim.log.levels.OFF)

vim.filetype.add({
  extension = {
    ["vs"] = "glsl",
    ["fs"] = "glsl",
    ["cs"] = "glsl",
    ["inc"] = "glsl",
  },
})

if vim.g.neovide then
  vim.o.guifont = "VictorMono Nerd Font:h14"
  vim.g.neovide_refresh_rate = 240
end
