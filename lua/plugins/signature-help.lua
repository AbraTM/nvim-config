return {
	-- Show function signatures while typing
	{
		"ray-x/lsp_signature.nvim",
		event = "VeryLazy",
		config = function()
			require("lsp_signature").setup({
				bind = true, -- Mandatory
				handler_opts = {
					border = "rounded",
				},
				-- Show hints as you type
				hint_enable = true,
				hint_prefix = "🐼 ",
				hint_scheme = "String",

				-- Floating window settings
				floating_window = true,
				floating_window_above_cur_line = true,

				-- Auto trigger signature help
				toggle_key = "<C-k>", -- Toggle signature help with Ctrl+k
				select_signature_key = "<M-n>", -- Cycle through signatures with Alt+n

				-- Always show signature help
				always_trigger = true,
				auto_close_after = nil, -- Don't auto close

				-- Additional features
				extra_trigger_chars = { "(", "," },
				hi_parameter = "LspSignatureActiveParameter",

				-- Document highlights
				cursorhold_update = true,
				timer_interval = 200,

				-- Transparency
				transparency = 10,
			})
		end,
	},

	-- Show parameter hints inline (like VS Code)
	{
		"nvimdev/lspsaga.nvim",
		event = "LspAttach",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("lspsaga").setup({
				-- UI
				ui = {
					border = "rounded",
					code_action = "💡",
					colors = {
						normal_bg = "#1e1e1e",
					},
				},

				-- Hover documentation
				hover = {
					max_width = 0.6,
					max_height = 0.8,
					open_link = "gx",
				},

				-- Symbol in winbar
				symbol_in_winbar = {
					enable = false, -- Set to true if you want breadcrumbs
				},

				-- Code action
				code_action = {
					num_shortcut = true,
					show_server_name = true,
					extend_gitsigns = false,
				},

				-- Lightbulb (shows when code actions available)
				lightbulb = {
					enable = true,
					enable_in_insert = true,
					sign = true,
					sign_priority = 40,
					virtual_text = false,
				},

				-- Diagnostic
				diagnostic = {
					show_code_action = true,
					show_source = true,
					jump_num_shortcut = true,
					max_width = 0.7,
					max_height = 0.6,
					text_hl_follow = true,
					border_follow = true,
				},

				-- Rename
				rename = {
					quit = "<C-c>",
					exec = "<CR>",
					mark = "x",
					confirm = "<CR>",
					in_select = true,
				},
			})

			-- Keybindings for Lspsaga
			local keymap = vim.keymap.set

			-- Hover with better UI
			keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", { desc = "Hover Documentation" })

			-- Show function signature
			keymap("n", "<leader>k", "<cmd>Lspsaga hover_doc<CR>", { desc = "Show Signature" })

			-- Peek definition (show in floating window without jumping)
			keymap("n", "gp", "<cmd>Lspsaga peek_definition<CR>", { desc = "Peek Definition" })

			-- Peek type definition
			keymap("n", "gpt", "<cmd>Lspsaga peek_type_definition<CR>", { desc = "Peek Type Definition" })

			-- Go to definition (better than default)
			keymap("n", "gd", "<cmd>Lspsaga goto_definition<CR>", { desc = "Goto Definition" })

			-- Go to type definition
			keymap("n", "gt", "<cmd>Lspsaga goto_type_definition<CR>", { desc = "Goto Type Definition" })

			-- Find references
			keymap("n", "gr", "<cmd>Lspsaga finder<CR>", { desc = "Find References" })

			-- Code action with better UI
			keymap({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>", { desc = "Code Action" })

			-- Rename with better UI
			keymap("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", { desc = "Rename" })

			-- Show line diagnostics
			keymap("n", "<leader>d", "<cmd>Lspsaga show_line_diagnostics<CR>", { desc = "Line Diagnostics" })

			-- Show cursor diagnostics
			keymap("n", "<leader>dc", "<cmd>Lspsaga show_cursor_diagnostics<CR>", { desc = "Cursor Diagnostics" })

			-- Show buffer diagnostics
			keymap("n", "<leader>db", "<cmd>Lspsaga show_buf_diagnostics<CR>", { desc = "Buffer Diagnostics" })

			-- Navigate diagnostics
			keymap("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { desc = "Previous Diagnostic" })
			keymap("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", { desc = "Next Diagnostic" })

			-- Outline
			keymap("n", "<leader>o", "<cmd>Lspsaga outline<CR>", { desc = "Toggle Outline" })

			-- Call hierarchy
			keymap("n", "<leader>ci", "<cmd>Lspsaga incoming_calls<CR>", { desc = "Incoming Calls" })
			keymap("n", "<leader>co", "<cmd>Lspsaga outgoing_calls<CR>", { desc = "Outgoing Calls" })
		end,
	},
}

-- Method / Function Signatures
