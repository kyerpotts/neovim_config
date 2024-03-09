vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "highlight when yanking text",
  group = vim.api.nvim_create_augroup("milky-highlight-yank", {clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
