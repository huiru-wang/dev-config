return {
  "folke/snacks.nvim",
  opts = {
    bigfile = { enabled = true },
    dashboard = { enabled = true },
    explorer = { -- 关键配置部分
      -- 或者其他你可能启用的 snacks 组件
      filter = {
        -- 设置为 false 以显示被 gitignore 忽略的文件
        git_ignored = false,
        -- 设置为 false 以显示隐藏文件 (以 . 开头)
        dotfiles = false,
      },
    },
    -- 如果使用的是 snacks 的 filepicker 而不是侧边栏 explorer
    -- picker = {
    --   filter = {
    --     git_ignored = false,
    --     dotfiles = false,
    --   },
    -- },
    picker = {
      sources = {
        explorer = {
          -- 显示被 .gitignore 忽略的文件
          git_ignored = true,
          -- 如果你也想显示以 . 开头的隐藏文件（如 .env, .prettierrc）
          hidden = true,
        },
      },
    },
  },
}
