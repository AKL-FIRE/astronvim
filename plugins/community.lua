return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },

  -- bars-and-lines
  { import = "astrocommunity.bars-and-lines.heirline-mode-text-statusline" },
  { import = "astrocommunity.bars-and-lines.heirline-vscode-winbar" },

  -- motion
  { import = "astrocommunity.motion.flash-nvim" },

  -- editting
  { import = "astrocommunity.editing-support.nvim-devdocs" },

  -- cmp
  { import = "astrocommunity.completion.cmp-cmdline" },

  -- spectre
  { import = "astrocommunity.project.nvim-spectre" },

  -- test
  { import = "astrocommunity.test.neotest" },

  -- todo
  { import = "astrocommunity.editing-support.todo-comments-nvim" },

  -- AI copilot
  { import = "astrocommunity.editing-support.chatgpt-nvim" },
  {
    "ChatGPT.nvim",
    opts = {
      openai_params = {
        max_tokens = 1000,
      },
    },
  },
}
