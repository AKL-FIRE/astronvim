return {
  -- language specifications
  vim.fn.executable "lua" == 1 and { import = "astrocommunity.pack.lua" } or {},
  vim.fn.executable "go" == 1 and { import = "astrocommunity.pack.go" } or {},
  vim.fn.executable "npm" == 1 and { import = "astrocommunity.pack.html-css" } or {},
  vim.fn.executable "npm" == 1 and { import = "astrocommunity.pack.tailwindcss" } or {},
  vim.fn.executable "npm" == 1 and { import = "astrocommunity.pack.typescript" } or {},
  vim.fn.executable "npm" == 1 and { import = "astrocommunity.pack.json" } or {},
  vim.fn.executable "npm" == 1 and { import = "astrocommunity.pack.yaml" } or {},
  vim.fn.executable "npm" == 1 and { import = "astrocommunity.pack.prisma" } or {},
  (vim.fn.executable "python" == 1 or vim.fn.executable "python3" == 1) and { import = "astrocommunity.pack.python" }
    or {},
  (vim.fn.executable "gcc" == 1 or vim.fn.executable "clang" == 1) and { import = "astrocommunity.pack.cpp" } or {},
  vim.fn.executable "cmake" == 1 and { import = "astrocommunity.pack.cmake" } or {},
  vim.fn.executable "rustc" == 1 and { import = "astrocommunity.pack.rust" } or {},
  vim.fn.executable "bash" == 1 and { import = "astrocommunity.pack.bash" } or {},
  { import = "astrocommunity.pack.full-dadbod" },
}
