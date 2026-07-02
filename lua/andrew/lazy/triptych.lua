return {
  'simonmclean/triptych.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',        -- optional for icons
    'antosha417/nvim-lsp-file-operations' -- optional LSP integration
  },
  opts = {},                              -- config options here
  keys = {
    { '<leader>p', ':Triptych<CR>' },
  },
}
