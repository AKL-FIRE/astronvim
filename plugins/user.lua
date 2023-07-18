return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },

  -- async task
  {
    "skywind3000/asynctasks.vim",
    cmd = { "AsyncTask" },
    dependencies = {
      {
        "skywind3000/asyncrun.vim",
      },
    },
  }
}
