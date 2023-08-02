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

    -- overseer
    ["<leader>x"] = { desc = " " .. "Task" },
    ["<leader>xr"] = { "<cmd>:OverseerRun<cr>", desc = "Run task" },
    ["<leader>xt"] = { "<cmd>:OverseerToggle<cr>", desc = "Toggle task log" },

    -- dap
    ["<leader>dl"] = { "<cmd>:DapLoadLaunchJSON<cr>", desc = "Load launch.json" },

    -- neotest
    ["<leader>T"] = { desc = " " .. "Test" },
    ["<leader>Tt"] = { "<cmd>lua require('neotest').summary.toggle()<cr>", desc = "toggle unit test" },
    ["<leader>Tn"] = { "<cmd>lua require('neotest').run.run()<cr>", desc = "Run nearest test" },
    ["<leader>Tc"] = { '<cmd>lua require("neotest").run.run(vim.fn.expand("%"))<cr>', desc = "Run current file test" },
    ["<leader>Ts"] = { "<cmd>lua require('neotest').run.stop()<cr>", desc = "Stop nearest test" },
    ["<leader>To"] = { "<cmd>lua require('neotest').output.open()<cr>", desc = "Display output of tests" },
    ["<leader>Td"] = { "<cmd>lua require('dap-go').debug_test()<cr>", desc = "debug nearest test" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
