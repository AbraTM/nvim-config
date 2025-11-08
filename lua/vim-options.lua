-- Vim Options

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.number = true
vim.opt.list = false

-- My Keys
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all" })
