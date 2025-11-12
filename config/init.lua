require("config.lazy")
require("config.theme")
require("config.lsp")

vim.keymap.set("n", "<Leader>p", ":popup PopUp<CR>")
vim.keymap.set("n", "<Leader>F", ":Telescope live_grep<CR>")