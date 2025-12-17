return {
  "tpope/vim-fugitive",
  keys = {
    { "<leader>g", function() vim.cmd("vertical Git") end, desc = "Fugitive status (vertical)" },
  }
}
