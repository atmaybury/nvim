return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },

  keys = {
    { "<leader>ff", function() require("telescope.builtin").find_files() end,           desc = "Find Files" },
    { "<leader>fg", function() require("telescope.builtin").live_grep() end,            desc = "Live Grep" },
    { "<leader>fb", function() require("telescope.builtin").buffers() end,              desc = "Buffers" },
    { "<leader>fh", function() require("telescope.builtin").help_tags() end,            desc = "Help Tags" },
    { "<leader>fr", function() require("telescope.builtin").lsp_references() end,       desc = "LSP References" },
    { "<leader>fm", function() require("telescope.builtin").lsp_document_symbols() end, desc = "Document Symbols" }
  },

  config = function()
    local telescope = require("telescope")

    -- Keymap to toggle layout strategy
    local layout = "horizontal"
    telescope.setup({
      defaults = {
        layout_strategy = layout,
      },
    })
    vim.keymap.set("n", "<leader>fl", function()
      layout = layout == "vertical" and "horizontal" or "vertical"
      telescope.setup({
        defaults = {
          layout_strategy = layout,
        },
      })
      print("Telescope layout set to: " .. layout)
    end, { desc = "Toggle Telescope layout" })
  end,
}
