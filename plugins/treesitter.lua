return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "astro",
      "bash",
      "css",
      "dockerfile",
      "html",
      "javascript",
      "json",
      "jsonc",
      "lua",
      "luap",
      "make",
      "markdown",
      "php",
      "sql",
      "twig",
      "typescript",
      "vim",
      "yaml",
    },
    highlight = { enable = true, additional_vim_regex_highlighting = { "php" } },
    sync_installed = { true },
    indent = { enable = false },
    ignore_install = { "phpdoc" },
    autopairs = {
      enable = true,
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "gnn",
        node_incremental = "grn",
        scope_incremental = "grc",
        node_decremental = "grm",
      },
    },
    autotag = {
      enable = true,
      filetypes = {
        "html",
        "javascript",
        "javascriptreact",
        "svelte",
        "typescript",
        "typescriptreact",
        "vue",
        "xml",
        "php",
      },
    },
  },
}
