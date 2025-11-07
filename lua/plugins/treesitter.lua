return {
  "nvim-treesitter/nvim-treesitter", 
  branch = 'master', 
  lazy = false, 
  build = ":TSUpdate",

  config = function() 
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        -- Core Languages
        -- "java",
        -- "python",
        "lua",
        "javascript",
        -- "typescript",  
        -- "tsx",         -- React + JSX/TSX
        -- "html",
        -- "css",
        -- "json",
        -- "sql",         -- PostgreSQL / MySQL / general SQL files
        -- "bash",        -- shell scripts, useful for Docker/DevOps scripts
        -- "lua",         -- Neovim config
        -- "markdown",    -- README, docs
        -- "yaml",        -- CI / k8s / docker-compose
        -- "dockerfile",  -- Dockerfile
        -- "graphql",     -- GraphQL usages (APIs)
        -- "gitignore",   -- gitignore files
        -- "toml",        -- pyproject/other configs
        -- "make",        -- Makefiles
        -- "regex",       -- helpful for various tooling configs
      },
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    })
  end,
}

-- TreeSitter
-- Parses Code and Creates ASTs
