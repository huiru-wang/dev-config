# 工作流

Ghostty + Yazi + NeoVim + ClaudeCode

## 1. Ghostty

1. 性能与渲染(Zig、GPU加速、内存占用低)
2. 配置灵活、单window多session
3. `Quick Terminal`很好用

## 2. Yazi

1. Mac的Finder太难用了，将可视化目录管理在终端集成
2. 无缝集成Neovim
3. Vim语法更高效的完成：查找文件、切换、跳转目录、文件预览、即时编辑

## Tmux

一个Terminal可以打开多个windows，每个window正常情况下是一个session，session对应一个进程，互相绑定（关闭session则关闭进程）

Tmux 将会话与窗口解绑：
1. 允许单个window访问多个session
2. 新的window可以接入已有的session
3. 允许单个session可以有多个连接的window（多人共享）
4. 窗口的任意拆分（水平、垂直）


## ClaudeCode

重要目录：
- `~/.claude.json`：元配置
- `~/.claude/`：全局配置
- `~/.claude/settings.json`：URL、API_KEY、MODEL、PERMISSION等

```json
{
    "env": {
        "ANTHROPIC_AUTH_TOKEN": "",
        "ANTHROPIC_BASE_URL": "https://api.minimaxi.com/anthropic",
        "API_TIMEOUT_MS": "3000000",
        "CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC": 1,
        "ANTHROPIC_MODEL": "MiniMax-M2.7",
        "ANTHROPIC_SMALL_FAST_MODEL": "MiniMax-M2.7",
        "ANTHROPIC_DEFAULT_SONNET_MODEL": "MiniMax-M2.7",
        "ANTHROPIC_DEFAULT_OPUS_MODEL": "MiniMax-M2.7",
        "ANTHROPIC_DEFAULT_HAIKU_MODEL": "MiniMax-M2.7"
    },
    "permissions": {
        "allow": [
            "Bash(npm list:*)",
            "Bash(npm install:*)",
            "Bash(pnpm add:*)"
        ],
        "defaultMode": "default"
    }
}
```

执行模式：
- `? for shotcuts`默认模式：创建修改询问用户开启：`shift + tab`
- `accept edits on`自动模式：自动创建修改文件（执行终端命令依然会寻求同意）开启：`shift + tab`
- `plan mode on`规划模式：只讨论、不修改文件，讨论完会提示是否执行；开启：`shift + tab`
- `bypass permissons on`危险模式：执行任何命令都不再询问。开启：`claude --dangerously-skip-permissions`
- `bash mode`：执行命令行。开启：`!`

选择会话：`/resume` 或 `claude -c` 进入并恢复上次会话；

回滚代码：`/rewind` 或双击 Esc 选中回滚点；

主动压缩上下文：`/compact [定制化压缩]`

## Skills

统一管理：**vercel-skills**
- 查找Skills：`npx skills find [keyword]`
- 安装skills：`npx skills add <owner/repo@skill>`

```shell
npx skills add vercel-labs/agent-skills@vercel-react-best-practices

███████╗██╗  ██╗██╗██╗     ██╗     ███████╗
██╔════╝██║ ██╔╝██║██║     ██║     ██╔════╝
███████╗█████╔╝ ██║██║     ██║     ███████╗
╚════██║██╔═██╗ ██║██║     ██║     ╚════██║
███████║██║  ██╗██║███████╗███████╗███████║
╚══════╝╚═╝  ╚═╝╚═╝╚══════╝╚══════╝╚══════╝

┌   skills
│
◇  Source: https://github.com/vercel-labs/agent-skills.git @vercel-react-best-practices
│
◇  Repository cloned
│
◇  Found 6 skills
│
●  Selected 1 skill: vercel-react-best-practices
│
◇  42 agents
◇  Which agents do you want to install to?
│  Amp, Cline, Codex, Cursor, Gemini CLI, GitHub Copilot, Kimi Code CLI, OpenCode, Warp, Claude Code
│
◇  Installation scope
│  Global
│
◇  Installation method
│  Symlink (Recommended)
```
```
```




```

