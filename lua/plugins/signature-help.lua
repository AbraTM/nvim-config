return {
	-- Show function signatures while typing
	{
		"ray-x/lsp_signature.nvim",
		event = "LspAttach",
		config = function()
			require("lsp_signature").setup({
				bind = true,
				handler_opts = {
					border = "rounded",
				},
				hint_enable = false, -- Disable inline hints (can be distracting)
				floating_window = true,
				floating_window_above_cur_line = true,
				toggle_key = "<C-k>", -- Ctrl+k to toggle
				extra_trigger_chars = { "(", "," },
				transparency = 10,
			})
		end,
	},
}