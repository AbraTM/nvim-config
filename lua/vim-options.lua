-- Vim Options

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.number = true
vim.opt.list = false

-- My Keys

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- ============================================================================
-- Move lines up/down (Alt + Up/Down) - Like VS Code
-- ============================================================================

-- Normal mode: Move current line
keymap("n", "<A-Down>", ":m .+1<CR>==", opts)
keymap("n", "<A-Up>", ":m .-2<CR>==", opts)

-- Insert mode: Move current line
keymap("i", "<A-Down>", "<Esc>:m .+1<CR>==gi", opts)
keymap("i", "<A-Up>", "<Esc>:m .-2<CR>==gi", opts)

-- Visual mode: Move selected lines
keymap("v", "<A-Down>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-Up>", ":m '<-2<CR>gv=gv", opts)

-- Indent/Outdent in visual mode (Tab/Shift+Tab)
keymap("v", "<Tab>", ">gv", opts)
keymap("v", "<S-Tab>", "<gv", opts)

-- New line below/above without leaving normal mode
keymap("n", "<leader>o", "o<Esc>", opts)
keymap("n", "<leader>O", "O<Esc>", opts)

-- Select all
keymap("n", "<C-a>", "ggVG", { desc = "Select all" })
