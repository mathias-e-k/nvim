local mathGroup = vim.api.nvim_create_augroup("mathGroup", {})


-- highlighting on yank (copy)
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- lsp formatting
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if not client then return end
    if client:supports_method('textDocument/formatting') then
      -- Format the current buffer on save
      vim.api.nvim_create_autocmd('BufWritePre', {
        buffer = args.buf,
        callback = function()
          vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
        end,
      })
    end
  end,
})

-- clipboard integration
-- vim.api.nvim_create_autocmd("UiEnter", {
--   group = mathGroup,
--   callback = function()
--     print("HEY")
--     vim.opt.clipboard = "unnamedplus"
--   end
-- })

-- scheduled setting after `UiEnter` because it can increase startup-time
-- vim.schedule(function()
--   vim.opt.clipboard = "unnamedplus"
-- end)
