return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      enable_git_status = false,
      enable_diagnostics = false,
      default_component_configs = {
        icon = {
          folder_closed = "",
          folder_open = "",
          folder_empty = "",
          default = "",
        },
        name = {
          use_git_status_colors = false,
        },
        git_status = {
          symbols = {
            added = "",
            modified = "",
            deleted = "",
            renamed = "",
            untracked = "",
            ignored = "",
            unstaged = "",
            staged = "",
            conflict = "",
          },
        },
      },
      window = {
        width = 25, -- reduced width from default (~40)
        mappings = {
          ["<space>"] = "none", -- optional: disable space expand
        },
      },
    })

    -- Keymaps
    vim.keymap.set("n", "<C-n>", ":Neotree toggle reveal<CR>", { desc = "Toggle Neo-tree" })
    vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", { desc = "Neo-tree buffers" })
  end,
}
