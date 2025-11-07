return {
  "nvimtools/none-ls.nvim",
  lazy = false,
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        -- Formatters
        null_ls.builtins.formatting.stylua,      -- Lua formatter
        null_ls.builtins.formatting.prettier,    -- JS/TS/HTML/CSS
        null_ls.builtins.formatting.black,       -- Python
        null_ls.builtins.formatting.isort,       -- Python imports
        null_ls.builtins.formatting.shfmt,       -- Shell scripts
        null_ls.builtins.formatting.sql_formatter, -- SQL
        
        -- Linters
        null_ls.builtins.diagnostics.eslint_d,   -- JS/TS linting
        null_ls.builtins.diagnostics.flake8,     -- Python linting
      },
    })
  end,
}

