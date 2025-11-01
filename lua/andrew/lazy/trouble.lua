return {
  "folke/trouble.nvim",
  opts = {},
  cmd = "Trouble",
  keys = {
    {
      "<leader>xx",
      "<cmd>Trouble diagnostics toggle<cr>",
      desc = "Diagnostics (Trouble)",
    },
    -- {
    --   "<leader>xx",
    --   vim.diagnostic.open_float,
    --   desc = "Diagnostics (Trouble)",
    -- },
    {
      "<leader>dn",
      vim.diagnostic.goto_next,
      desc = "Next diagnostic",
    },
    {
      "<leader>dp",
      vim.diagnostic.goto_prev,
      desc = "Previous diagnostic",
    },
  }
}
