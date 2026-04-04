-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("i", "jk", "<Esc>", { desc = "Exit Insert mode", noremap = true })

-- 复制文件名
map("n", "<leader>fy", function()
  vim.fn.setreg("+", vim.fn.expand("%:t"))
  vim.notify("已复制文件名: " .. vim.fn.expand("%:t"), vim.log.levels.INFO, { title = "LazyVim" })
end, { desc = "Copy Filename" })

-- 复制绝对路径
map("n", "<leader>fY", function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  vim.notify("已复制绝对路径", vim.log.levels.INFO, { title = "LazyVim" })
end, { desc = "Copy Absolute Path" })
