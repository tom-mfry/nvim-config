vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- greatest remap ever. Delete text without adding to register and paste what is in buffer, ensuring paste text stats in buffer
vim.keymap.set("x", "<leader>p", [["_dP]])

-- yank to system clipboard
-- vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
-- yank entire line to system clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete text without adding it to buffer
vim.keymap.set({"n", "v"}, "<leader>d", "\"_d")

-- mini files open file tree
vim.keymap.set('n', '<leader>e', function()
  require('mini.files').open()
end, { desc = "Open MiniFiles" })
