return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },

  -- language specifications
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.cmake" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.yaml" },

  -- bars-and-lines
  { import = "astrocommunity.bars-and-lines.heirline-mode-text-statusline" },
  { import = "astrocommunity.bars-and-lines.heirline-vscode-winbar" },

  -- debug
  { import = "astrocommunity.debugging.nvim-dap-virtual-text" },

  -- motion
  { import = "astrocommunity.motion.flash-nvim" },

  -- cmp
  { import = "astrocommunity.completion.cmp-cmdline" },

  -- todo
  { import = "astrocommunity.editing-support.todo-comments-nvim" },

  -- spectre
  { import = "astrocommunity.project.nvim-spectre" },

  -- test
  { import = "astrocommunity.test.neotest" },

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
