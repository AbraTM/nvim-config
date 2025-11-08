-- File: lua/plugins/toggleterm.lua
return {
	"akinsho/toggleterm.nvim",
	version = "*", -- Recommended for stability

	-- Load this plugin very lazily
	event = "VeryLazy",

	config = function()
		require("toggleterm").setup({
			-- Set the size of the floating terminal
			size = 20,

			-- Start in insert mode
			start_in_insert = true,

			-- Keep the size consistent
			persist_size = true,

			-- Open as a floating window
			direction = "float",

			-- Close the terminal window when the process exits
			close_on_exit = true,
		})

		-- === Keymaps ===
		-- This is the most reliable way to set keymaps
		local opts = { desc = "Toggle floating terminal" }

		-- Toggle in Normal mode
		vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm<CR>", opts)

		-- Toggle in Insert mode (escapes insert mode first)
		vim.keymap.set("i", "<leader>t", "<C-\\><C-n><cmd>ToggleTerm<CR>", opts)

		-- Toggle in Terminal mode (escapes terminal mode first)
		vim.keymap.set("t", "<leader>t", "<C-\\><C-n><cmd>ToggleTerm<CR>", opts)
	end,
}
