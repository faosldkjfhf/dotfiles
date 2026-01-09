vim.opt.relativenumber = true
vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
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
  vim.o.guifont = "Maple Mono NF:h14"
end
