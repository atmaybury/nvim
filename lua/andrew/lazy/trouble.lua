return {
  "folke/trouble.nvim",
  opts = {},
  cmd = "Trouble",
  keys = {
    {
      "<leader>xx",
      vim.diagnostic.open_float,
      desc = "Diagnostics (Trouble)",
    },
  }
}
