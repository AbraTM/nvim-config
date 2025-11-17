-- Vim Options

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.list = false
vim.opt.ignorecase = true -- Case insensitive search
vim.opt.smartcase = true -- Unless capital letter used
vim.opt.scrolloff = 8 -- Keep 8 lines visible above/below cursor

-- My Keys

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Indent/Outdent in visual mode Tab/Shift+Tab
keymap("v", "<Tab>", ">gv", opts)
keymap("v", "<S-Tab>", "<gv", opts)

-- Select all Ctrl + a
keymap("n", "<C-a>", "ggVG", { desc = "Select all" })

-- Switch Windows Ctrl + hjkl
keymap("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
keymap("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
keymap("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
keymap("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- Resize window using Ctrl + arrow keys
keymap("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
keymap("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
keymap("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
keymap("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Move Lines Alt + arrows/hjkl
keymap("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
keymap("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
keymap("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
keymap("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
keymap("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
keymap("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

-- Duplicate line Shift + Alt + Arrows
keymap("n", "<S-A-j>", "yyp", { desc = "Duplicate line down" })
keymap("n", "<S-A-k>", "yyP", { desc = "Duplicate line up" })

-- Open Terminal
keymap("n", "<leader>t", function()
	vim.cmd("belowright 10split")
	vim.cmd("term")
	vim.cmd("startinsert")
end, { desc = "Open terminal at bottom", silent = true })

-- Terminal navigation: Switch to normal mode and navigate windows
keymap("t", "<C-h>", [[<C-\><C-n><C-w>h]], { silent = true })
keymap("t", "<C-j>", [[<C-\><C-n><C-w>j]], { silent = true })
keymap("t", "<C-k>", [[<C-\><C-n><C-w>k]], { silent = true })
keymap("t", "<C-l>", [[<C-\><C-n><C-w>l]], { silent = true })

-- Easy escape from terminal mode (recommended addition)
keymap("t", "<Esc>", [[<C-\><C-n>]], { silent = true })

-- Undo in Insert Mode
keymap("i", "<C-z>", "<C-o>u", { silent = true })

-- Select top suggetion
local cmp = require("cmp")

cmp.setup({
	mapping = {
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	},
})
