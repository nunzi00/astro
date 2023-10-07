return {
  -- customize alpha options
  -- You can disable default plugins as follows:
  -- { "max397574/better-escape.nvim", enabled = false },
  --
  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  -- {
  --   "L3MON4D3/LuaSnip",
  --   config = function(plugin, opts)
  --     require "plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom luasnip configuration such as filetype extend or custom snippets
  --     local luasnip = require "luasnip"
  -- luasnip.filetype_extend("javascript", { "javascriptreact" })
  --   end,
  -- },
  {
    "mfussenegger/nvim-dap",
    config = function(plugin, opts)
      require "plugins.configs.mason-nvim-dap"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom luasnip configuration such as filetype extend or custom snippets
      local dap = require "dap"
      dap.adapters.php = {
        type = "executable",
        command = "node",
        args = { os.getenv "HOME" .. "/.local/share/vscode-php-debug/out/phpDebug.js" },
      }
      dap.configurations.php = {
        {
          type = "php",
          request = "launch",
          name = "Monorepo backend",
          pathMappings = {
            ["/app"] = "${workspaceFolder}",
          },
          port = 9003,
        },
      }
      dap.adapters.php = function(callback, config) callback { type = "server", host = "localhost", port = 9003 } end
    end,
  },
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
}
