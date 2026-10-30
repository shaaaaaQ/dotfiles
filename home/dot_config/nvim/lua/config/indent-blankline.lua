local highlight = {
    "IndentBlanklineIndent1",
}

local hooks = require "ibl.hooks"
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "IndentBlanklineIndent1", { fg = "#808080" })
end)

require("ibl").setup {
    indent = {
        highlight = highlight,
        char = "▏",
    }
}
