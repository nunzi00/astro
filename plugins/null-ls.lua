return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"
    config.debug = true

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      null_ls.builtins.diagnostics.twigcs,
      -- null_ls.builtins.diagnostics.phpstan.with {
      --   condition = function(utils) return utils.root_has_file "vendor/bin/phpstan" end,
      --   command = "/home/lucas/getlife/backend/vendor/bin/phpstan",
      --   args = {
      --     "--configuration=/home/lucas/getlife/backend/phpstan.neon",
      --     "analyze",
      --     "--error-format",
      --     "json",
      --     "--no-progress",
      --     "$FILENAME",
      --   },
      -- },
      null_ls.builtins.diagnostics.yamllint.with {
        extra_args = { "-d { extends: default, rules: {line-length: {max: 120}}}" },
      },
      -- null_ls.builtins.diagnostics.phpcs.with {
      --   condition = function(utils) return utils.root_has_file "vendor/bin/phpcs" end,
      --   command = "./vendor/bin/phpcs",
      --   args = {
      --     -- THE CUSTOM STANDARD
      --     "--standard=PSR12",
      --     "--report=json",
      --     -- silence status messages during processing as they are invalid JSON
      --     "-q",
      --     -- always report codes
      --     "-s",
      --     -- phpcs exits with a non-0 exit code when messages are reported but we only want to know if the command fails
      --     "--runtime-set",
      --     "ignore_warnings_on_exit",
      --     "1",
      --     "--runtime-set",
      --     "ignore_errors_on_exit",
      --     "1",
      --     -- process stdin
      --     "-",
      --   },
      -- },
      null_ls.builtins.code_actions.eslint,
      null_ls.builtins.formatting.json_tool,
      null_ls.builtins.diagnostics.eslint,
      null_ls.builtins.formatting.eslint,
      null_ls.builtins.formatting.xmllint,
      null_ls.builtins.diagnostics.stylelint,
      null_ls.builtins.formatting.stylelint,
      null_ls.builtins.formatting.black.with { extra_args = { "--fast" } },
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.yamlfmt,
      null_ls.builtins.formatting.prettierd,
      null_ls.builtins.formatting.phpcbf.with { extra_args = { "--standard=PSR12" } },
      null_ls.builtins.formatting.phpcsfixer.with { extra_args = { "--standard=PSR12" } },
      null_ls.builtins.formatting.shfmt,
      null_ls.builtins.formatting.black,
      -- null_ls.builtins.completion.luasnip,
    }
    -- Set a formatter
    -- null_ls.builtins.formatting.stylua,
    -- null_ls.builtins.formatting.prettier,
    return config -- return final config table
  end,
}
