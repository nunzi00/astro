-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>z"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    ["<leader>x"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<leader>v"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          vim.cmd.vsplit()
          vim.api.nvim_win_set_buf(0, bufnr)
        end)
      end,
      desc = "Vertical split buffer from tabline",
    },
    ["<C-/>"] = {
      function()
        require("Comment.api").toggle.linewise.count(vim.v.count > 0 and vim.v.count or 1)
        vim.cmd "norm! j"
      end,
      desc = "Comment",
    },
    -- ["<leader>te"] = {
    -- function()
    -- local file = vim.fn.fnamemodify(vim.fn.expand "%", ":~:.")
    -- local command = string.format("!docker exec gf_back sh -c 'APP_ENV=test php vendor/bin/phpunit %s'", file)
    -- vim.notify(command)
    -- vim.cmd(command)
    -- end,
    -- desc = "PhpUnit",
    -- },
    ["<leader>ta"] = {
      function() vim.cmd "!docker exec gf_back sh -c 'APP_ENV=test php vendor/bin/phpunit'" end,
      desc = "All test PhpUnit",
    },
    ["<leader>ps"] = {
      function()
        local file = vim.fn.expand "%"
        local command = string.format("!docker exec gf_back sh -c 'php vendor/bin/psalm -c psalm-local.xml %s'", file)
        vim.notify(command)
        vim.cmd(command)
      end,
      desc = "Psalm",
    },
    ["<leader>psa"] = {

      function()
        local file = vim.fn.expand "%"
        local command = string.format("!docker exec gf_back sh -c 'php vendor/bin/psalm -c psalm-local.xml'", file)
        vim.notify(command)
        vim.cmd(command)
      end,
      desc = "Full Psalm",
    },
    ["<leader>ca"] = {
      function() vim.lsp.buf.code_action { apply = true } end,

      desc = "LSP Code Actions",
    },
    ["<leader>tr"] = { "<cmd>TextCaseOpenTelescope<cr>", desc = "Text Transform" },
    ["<leader>to"] = { "<esc><cmd>lua require('neotest').output_panel.open()<cr>", desc = "Open Neotest Panel" },
    ["<leader>tc"] = { "<esc><cmd>lua require('neotest').output_panel.close()<cr>", desc = "Close Neotest Panel" },
    ["<leader>te"] = { "<esc><cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", desc = "PhpUnit File" },
    ["<leader>tm"] = { "<esc><cmd>lua require('neotest').run.run()<cr>", desc = "PhpUnit Method" },
    ["C-l"] = { "<cmd>:noh<cr>", desc = "Clear matches" },
    ["C-s"] = { "<cmd>:update<cr>", desc = "save" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    ["<C-/>"] = {
      "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
      desc = "Toggle comment line",
    },
    ["<leader>tr"] = { "<cmd>TextCaseOpenTelescope<cr>", desc = "Text Transform" },
    ["C-s"] = { "<cmd>:update<cr>", desc = "save" },
  },
}
