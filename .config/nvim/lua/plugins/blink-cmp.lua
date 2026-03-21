return {
  "saghen/blink.cmp",
  opts = {
    -- 核心配置：根据文件类型动态决定是否启用
    enabled = function()
      -- 如果是 markdown 或 tex 文件，返回 false (禁用)
      -- 你也可以添加其他不想有提示的文件类型，如 'gitcommit', 'text' 等
      local disabled_filetypes = { "markdown", "tex", "gitcommit", "text" }

      if vim.tbl_contains(disabled_filetypes, vim.bo.filetype) then
        return false
      end

      -- blink.cmp 文档建议：如果返回 false 则禁用，否则启用。
      return true
    end,

    -- (可选) 如果你希望完全禁用后，连手动触发 (Ctrl+Space) 都不行，上面的代码就够了。
    -- 如果你希望保留手动触发功能，可以使用更复杂的逻辑，但通常写 Markdown 不需要。
  },
}
