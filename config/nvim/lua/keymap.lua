local map = vim.api.nvim_set_keymap
map('i', 'jj', '<ESC>', { silent = true, noremap = true })

-- LSP
map('n', '<Leader>gf', '<cmd>lua vim.lsp.buf.format()<CR>', { noremap = true })

-- Telescope
map('n', '<Leader>ff', '<cmd>Telescope find_files<CR>', {})
map('n', '<Leader>fg', '<cmd>Telescope live_grep<CR>', {})
map('n', '<Leader>fb', '<cmd>Telescope file_browser<CR>', {})
map('n', '<Leader>fh', '<cmd>Telescope help_tags<CR>', {})
