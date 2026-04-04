-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.updatetime = 100
--opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.scrolloff = 8
opt.sidescrolloff = 8

opt.list = true
opt.listchars = { tab = "→ ", trail = "☜", extends = "…" }

opt.termguicolors = true

-- 设置 Tokyo Night 主题为透明背景
vim.g.tokyonight_transparent = true

-- 可选：让侧边栏透明
vim.g.tokyonight_transparent_sidebar = true
