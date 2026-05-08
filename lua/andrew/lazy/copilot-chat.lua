return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {
      window = {
        layout = "float",
        width = 0.5,
        height = 0.75,
      }
    },
    keys = {
      {
        "<leader>cp",
        function()
          require("CopilotChat").toggle()
        end,
        desc = "Toggle CopilotChat",
      },
    },
  },
}
