return {
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
      {
        type = "php",
        request = "launch",
        name = "Monorepo raiz",
        pathMappings = {
          ["/app"] = "${workspaceFolder}/backend",
        },
        port = 9003,
      },
    }
    dap.adapters.php = function(callback, config) callback { type = "server", host = "127.0.0.1", port = 9003 } end
  end,
}
