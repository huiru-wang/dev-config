# yazi

[yazi docs](https://yazi-rs.github.io/docs/quick-start)


## 操作
```
.          # 显示隐藏文件
t          # 创建一个tab（类似于创建一个终端tab，不是mark）
t [1-9]    # 切换到对应的tab
tab        # 查看详情
g <space>  # 直接跳转对应目录
z          # 目录下全局搜索文件
```

## 配置

```lua
-- ~/.config/yazi/yazi.toml

[mgr]
ratio = [1, 4, 4]        # 更宽的预览区域
show_hidden = true       # 默认显示隐藏文件
linemode = "size_and_mtime"
```

对应 yazi.toml的 linemode的表示函数：
```lua
-- ~/.config/yazi/init.lua

function Linemode:size_and_mtime()
	local time = math.floor(self._file.cha.mtime or 0)
	if time == 0 then
		time = ""
	else
		time = os.date("%Y-%m-%d %H:%M", time)
	end

	local size = self._file:size()
	return string.format("%s %s", size and ya.readable_size(size) or "-", time)
end
```

