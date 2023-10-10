-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "bashls",
        "denols",
        "docker_compose_language_service",
        "dockerls",
        "eslint",
        "intelephense",
        "lua_ls",
        "phpactor",
        "sqlls",
        "tsserver",
        "vimls",
        "yamlls",
        "html",
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      -- ensure_installed = { "luacheck", "phpcs", "ts-standard", "prettierd", "stylua", "phpcbf", "shfmt", "ts-standard" },
      ensure_installed = {
        "hadolint",
        "luacheck",
        "php-cs-fixer",
        "prettierd",
        "shellcheck",
        "shfmt",
        "stylua",
        "ts-standard",
        "ts-standard",
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = { "php-debug-adapter", "php" },
    },
  },
}
