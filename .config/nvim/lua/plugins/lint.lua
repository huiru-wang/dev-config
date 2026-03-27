return {
  "mfussenegger/nvim-lint",
  opts = {
    linters_by_ft = {
      markdown = { "markdownlint-cli2" }, -- 改用 cli2
    },
    linters = {
      ["markdownlint-cli2"] = {
        args = {}, -- cli2 自动读取配置文件
      },
    },
  },
}
