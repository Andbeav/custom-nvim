vim.cmd("colorscheme unokai")
vim.cmd("set number")
vim.cmd("hi! VertSplit guibg=NONE")

local hl_groups = {
  'DiagnosticUnderlineInfo',
  'DiagnosticUnderlineWarn',
  'DiagnosticUnderlineError',

}
for _, hl in ipairs(hl_groups) do
  vim.cmd.highlight(hl .. ' gui=undercurl')
end

vim.cmd("Neotree")
