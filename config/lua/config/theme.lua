vim.opt.number = true
vim.cmd("colorscheme unokai")
vim.cmd("hi! VertSplit guibg=NONE")

local highlight_groups = {
  'DiagnosticUnderlineInfo',
  'DiagnosticUnderlineWarn',
  'DiagnosticUnderlineError',
}
for _, highlight in ipairs(highlight_groups) do
  vim.cmd.highlight(highlight .. ' gui=undercurl')
end

vim.cmd("Neotree")