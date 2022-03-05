-- https://github.com/phaazon/hop.nvim
require("hop").setup()

-- 搜索并跳转到单词
vim.keybinds.gmap("n", "hw", "<cmd>HopWord<CR>", vim.keybinds.opts)

-- 向前搜索, after
vim.keybinds.gmap("n", "ha", "<cmd>HopWordAC<CR>", vim.keybinds.opts)

-- 向后搜搜， word
vim.keybinds.gmap("n", "hb", "<cmd>HopWordBC<CR>", vim.keybinds.opts)

-- 搜索并跳转到行
vim.keybinds.gmap("n", "hi", "<cmd>HopLine<CR>", vim.keybinds.opts)
-- 搜索并跳转到字符
vim.keybinds.gmap("n", "hc", "<cmd>HopChar1<CR>", vim.keybinds.opts)
