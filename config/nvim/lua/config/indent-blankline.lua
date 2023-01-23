vim.cmd [[highlight IndentBlanklineIndent1 guifg=#5c6370 guibg=#2e3234 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#5c6370 guibg=#2a3236 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#5c6370 guibg=#2e2e3a gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#5c6370 guibg=#293139 gui=nocombine]]

local highlight_list = {
    'IndentBlanklineIndent1',
    'IndentBlanklineIndent2',
    'IndentBlanklineIndent3',
    'IndentBlanklineIndent4'
}

require('indent_blankline').setup({
    show_end_of_line = true,
    char = "",
    char_highlight_list = highlight_list,
    space_char_highlight_list = highlight_list
})
