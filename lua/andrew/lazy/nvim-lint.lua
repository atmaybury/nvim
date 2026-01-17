return {
  "mfussenegger/nvim-lint",
  event = {
    "BufReadPre",
    "BufNewFile",
  },
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      javascript = { "eslint" },
      typescript = { "eslint" },
      javascriptreact = { "eslint" },
      typescriptreact = { "eslint" },
      python = { "ruff" },
    }

    -- Customize the ESLint linter to run from the app directory
    local eslint = require('lint').linters.eslint

    eslint.cwd = function()
      local current_file = vim.fn.expand('%:p')
      local package_json = vim.fn.findfile('package.json', vim.fn.fnamemodify(current_file, ':h') .. ';')

      if package_json ~= '' then
        return vim.fn.fnamemodify(vim.fs.normalize(package_json), ':h')
      end

      return vim.fn.getcwd()
    end

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}
