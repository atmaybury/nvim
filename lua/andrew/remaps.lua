-- key remappings
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

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

-- floaterm
vim.keymap.set({ "n", "t" }, "<leader>t", "<C-\\><C-n>:FloatermToggle<CR>")

-- jump to definition
vim.keymap.set("n", "<leader>d", ":lua vim.lsp.buf.definition()<CR>")
