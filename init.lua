-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
vim.opt.cmdheight = 0
vim.opt.clipboard = nil
vim.opt.confirm = true
vim.opt.spelllang = "en_us"
vim.opt.spell = true
vim.opt.swapfile = false
vim.opt.number = true
vim.opt.relativenumber = true
