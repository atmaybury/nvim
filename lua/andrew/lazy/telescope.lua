return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local telescope = require("telescope")

    local layout = "vertical"

    telescope.setup({
      defaults = {
        layout_strategy = layout,
      },
    })

    -- Keymap to toggle layout strategy
    vim.keymap.set("n", "<leader>tl", function()
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
