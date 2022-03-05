-- https://github.com/nvim-telescope/telescope.nvim​
-- WARN: telescope 手动安装依赖 fd 和 repgrep
-- https://github.com/sharkdp/fd
-- https://github.com/BurntSushi/ripgrep

require("telescope").setup()
-- 查找文件
-- vim.keybinds.gmap("n", "<leader>ff", "<cmd>Telescope find_files theme=dropdown<CR>", vim.keybinds.opts)
vim.keybinds.gmap("n", "<C-p>", "<cmd>Telescope find_files theme=dropdown<CR>", vim.keybinds.opts)

--  当前 buffer 模式查找
vim.keybinds.gmap("n", "<C-f>", "<cmd>Telescope current_buffer_fuzzy_find theme=dropdown<CR>", vim.keybinds.opts)

-- 全局模糊匹配
vim.keybinds.gmap("n", "<leader>f", "<cmd>Telescope live_grep theme=dropdown<CR>", vim.keybinds.opts)

-- 查找buffer。 选择buffer 使用
vim.keybinds.gmap("n", "<leader>b", "<cmd>Telescope buffers theme=dropdown<CR>", vim.keybinds.opts)
-- 查找帮助文档
-- vim.keybinds.gmap("n", "<leader>fh", "<cmd>Telescope help_tags theme=dropdown<CR>", vim.keybinds.opts)
-- 查找最近打开的文件
vim.keybinds.gmap("n", "<C-o>", "<cmd>Telescope oldfiles theme=dropdown<CR>", vim.keybinds.opts)
-- 查找 marks 标记
-- vim.keybinds.gmap("n", "<leader>fm", "<cmd>Telescope marks theme=dropdown<CR>", vim.keybinds.opts)
