return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",           -- Lua
          "pyright",          -- Python
          "jdtls",            -- Java
          "ts_ls",            -- JavaScript / TypeScript
          "html",             -- HTML
          "cssls",            -- CSS
          "jsonls",           -- JSON
          "sqlls",            -- SQL
          "bashls",           -- Bash
          "dockerls",         -- Dockerfile
          "yamlls",           -- YAML / Docker Compose
          "graphql",          -- GraphQL
          "marksman",         -- Markdown
        },
      })   
    end,
  },  
}
