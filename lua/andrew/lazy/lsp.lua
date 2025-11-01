return {
  -- mason
  { 'mason-org/mason.nvim', opts = {} },
  {
    'mason-org/mason-lspconfig.nvim',
    opts = {},
  },
  -- lsp config
  { 'neovim/nvim-lspconfig' },
  -- autocompletion
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'L3MON4D3/LuaSnip'
    },
    config = function()
      local cmp = require('cmp')
      cmp.setup({
        preselect = 'item',
        completion = {
          completeopt = 'menu,menuone,noinsert'
        },
        sources = {
          { name = 'nvim_lsp' },
        },
        mapping = {
          ['<CR>'] = cmp.mapping.confirm({ select = false }),
          ['<C-c>'] = cmp.mapping.abort(),
          ['<Up>'] = cmp.mapping.select_prev_item({ behavior = 'select' }),
          ['<Down>'] = cmp.mapping.select_next_item({ behavior = 'select' }),
          ['<Tab>'] = cmp.mapping.select_next_item({ behavior = 'select' }),
        },
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
      })
    end
  },
}
