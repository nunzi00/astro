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
    --     -- Phpactor
    --     {"<leader>cc" = {
    --       function()
    --         ":call phpactor#ClassNew()<CR>", opts) -- Generate a new class (replacing the current file)
    -- "<leader>u", ":call phpactor#UseAdd()<CR>", opts) -- Include use statement
    -- "<leader>mm", ":call phpactor#ContextMenu()<CR>", opts) -- Invoke the context menu
    -- "<leader>nn", ":call phpactor#Navigate()<CR>", opts) -- Invoke the navigation menu
    -- "<leader>o", ":call phpactor#GotoDefinition()<CR>", opts) -- Goto definition of class or class member under the cursor
    -- "<leader>ov", "<cmd>PhpactorGotoDefinition vsplit<CR>", opts) -- Goto definition in vertical split
    -- "<leader>oh", "<cmd>PhpactorGotoDefinition split<CR>", opts) -- Goto definition in horizontal split
    -- "<leader>ff", ":call phpactor#FindReferences()<CR>", opts) -- Extract expression (normal mode)
    -- "<leader>im", ":call phpactor#GotoImplementations()<CR>", opts)
    -- -- keymap("n", "<leader>k", ":call phpactor#Hover()<CR>", opts) -- Show brief information about the symbol under the cursor
    -- "<leader>tt", ":call phpactor#Transform()<CR>", opts) -- Transform the classes in the current file
    -- "<leader>ee", ":call phpactor#ExtractExpression()<CR>", opts) -- Extract expression (normal mode)
    -- keymap("v", "<leader>ee", ":call phpactor#ExtractExpression(v:true)<CR>", opts) -- Extract expression (visual mode)
    -- keymap("v", "<leader>em", ":call <C-u>PhpactorExtractMethod<CR>", opts) -- Extract method (visual mode)
    -- keymap("v", "<leader>ec", ":call <C-u>PhpactorExtractConstant<CR>", opts) -- Extract method (visual mode)
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
  },
}
