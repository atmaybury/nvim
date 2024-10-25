return {
  -- mason
  { 'williamboman/mason.nvim' },
  { 'williamboman/mason-lspconfig.nvim' },
  -- lsp-zero
  { 'neovim/nvim-lspconfig' },
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    config = function()
      -- setup lsp-zero
      local lsp_zero = require('lsp-zero')
      lsp_zero.extend_lspconfig()

      lsp_zero.on_attach(function(client, bufnr)
        lsp_zero.default_keymaps({ buffer = bufnr })
      end)

      -- setup mason for lsp-zero downloads
      require('mason').setup({})
      require('mason-lspconfig').setup({
        -- ensure_installed = { 'tsserver' },
        handlers = {
          lsp_zero.default_setup,
          tsserver = function()
            require('lspconfig').tsserver.setup({
              on_attach = lsp_zero.on_attach,
              capabilities = lsp_zero.get_capabilities(),
              settings = {
                typescript = {
                  preferences = {
                    importModuleSpecifierPreference = 'non-relative'
                  }
                }
              }
            })
          end
        },
      })
    end
  },
  { 'hrsh7th/cmp-nvim-lsp' },
  {
    'hrsh7th/nvim-cmp',
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
  { 'L3MON4D3/LuaSnip' },
}
