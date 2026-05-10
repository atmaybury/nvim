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
        width = 0.8,
        height = 0.8,
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
      {
        "<leader>ce",
        ":CopilotChatExplain<CR>",
        mode = "v",
        desc = "CopilotChat: Explain selection",
      },
    },
  },
}
