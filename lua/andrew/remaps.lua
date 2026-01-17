-- close buffer
vim.keymap.set('n', '<leader>q', ":bd<CR>")

-- open Oil
vim.keymap.set('n', '<leader>o', ":Oil<CR>")

-- centre after using ctrl-u / ctrl-d
vim.keymap.set({ "n", "v" }, "<C-u>", "<C-d>zz")
vim.keymap.set({ "n", "v" }, "<C-d>", "<C-d>zz")

-- centre after using n in search
vim.keymap.set("n", "n", "nzz")

-- commment out line
vim.keymap.set({ "n", "v" }, "<C-_>", ":Commentary<CR>")

-- <leader> left / right to switch buffers
vim.keymap.set("n", "<leader><Left>", ":bp<CR>")
vim.keymap.set("n", "<leader><Right>", ":bn<CR>")

-- Tab / Shift-Tab to switch buffers
vim.keymap.set('n', '<A-l>', ":bn<CR>")
vim.keymap.set('n', '<A-h>', ":bp<CR>")

-- floaterm
vim.keymap.set({ "n", "t" }, "<leader>t", "<C-\\><C-n>:FloatermToggle<CR>")

-- jump to definition
vim.keymap.set("n", "<leader>d", ":lua vim.lsp.buf.definition()<CR>")
