return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local db = require("dashboard")

		local header = {
			[[███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗]],
			[[████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║]],
			[[██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║]],
			[[██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
			[[██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║]],
			[[╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
			[[                                                   ]],
		}

		local center = {
			{ icon = " ", desc = "Find File", key = "f", action = "Telescope find_files" },
			{ icon = " ", desc = "Recent Files", key = "r", action = "Telescope oldfiles" },
			{ icon = " ", desc = "Find Text", key = "g", action = "Telescope live_grep" },
			{ icon = " ", desc = "New File", key = "e", action = "enew" },
			{ icon = " ", desc = "Quit", key = "q", action = "qa" },
		}

		local footer = { "", "~ Ey, I'm workin' here! ~" }

		db.setup({
			theme = "hyper",
			config = {
				header = header, -- Correct "NEOVIM" banner
				center = center,
				footer = footer,
				shortcut_type = "icon",
				shortcut_icon = " ",
				hide_statusline = true,
				hide_tabline = true,
			},
		})
	end,
}
