return {
  "tpope/vim-fugitive",
  lazy = false,
  keys = {
    { "<leader>g", function() vim.cmd("vertical Git") end, desc = "Fugitive status (vertical)" },
  }
}
