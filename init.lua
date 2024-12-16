require("config.lazy")

vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

-- clear highlights
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.opt.shiftwidth = 4
vim.opt.showmode = false
vim.opt.updatetime = 250
vim.opt.scrolloff = 10
vim.opt.cursorline = true

-- scheduled setting after `UiEnter` because it can increase startup-time
vim.schedule(function()
  vim.opt.clipboard = "unnamedplus"
end)

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
-- TODO: look into more plugins to add
-- harpoon
-- undotree
-- cloak
-- todo-comments
-- gitsigns
-- mini
-- snacks
-- something for git (fugitive?)
-- trouble
-- vimbegood
