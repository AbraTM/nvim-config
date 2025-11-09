-- ~/.config/nvim/lua/plugins/formatting.lua
return {
	-- Auto-formatting
	{
		"stevearc/conform.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local conform = require("conform")

			conform.setup({
				formatters_by_ft = {
					javascript = { "prettier" },
					typescript = { "prettier" },
					javascriptreact = { "prettier" },
					typescriptreact = { "prettier" },
					css = { "prettier" },
					html = { "prettier" },
					json = { "prettier" },
					lua = { "stylua" },
					python = { "black" },
					c = { "clang_format" },
					cpp = { "clang_format" },
					java = { "google-java-format" },
				},
				format_on_save = {
					lsp_fallback = true,
					timeout_ms = 1000,
				},
			})
		end,
	},

	-- Install formatters via Mason
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = {
			"williamboman/mason.nvim",
		},
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = {
					"prettier",
					"stylua",
					"black",
					"clang-format",
					"google-java-format",
				},
				auto_update = false,
				run_on_start = true,
			})
		end,
	},
}
