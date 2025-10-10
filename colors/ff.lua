-- 文件路径: ~/.config/nvim/colors/mycolorscheme.lua
local M = {}

-- 定义颜色
local colors = {
  black = '#000000',
  darkgray = '#1C1C1C',
  mediumgray = '#767676',
  lightgray = '#A8A8A8',
  white = '#FFFFFF',
  darkred = '#AF0000',
  red = '#D70000',
  darkgreen = '#005F00',
  green = '#00AF00',
  darkblue = '#0000AF',
  blue = '#0087FF',
  darkcyan = '#008787',
  cyan = '#00FFFF',
  darkmagenta = '#870087',
  magenta = '#AF00AF',
  darkyellow = '#878700',
  yellow = '#FFFF00',
  orange = '#FF8700',
  pink = '#FF00AF',
}

-- 设置高亮组
local function set_highlights()
  -- 基本高亮
  vim.api.nvim_set_hl(0, 'Normal', { fg = colors.white })
  vim.api.nvim_set_hl(0, 'CursorLine', { fg = colors.pink })
  vim.api.nvim_set_hl(0, 'CursorColumn', { fg = colors.blue })
  vim.api.nvim_set_hl(0, 'ColorColumn', { fg = colors.pink })
  vim.api.nvim_set_hl(0, 'LineNr', { fg = colors.mediumgray })
  vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = colors.yellow, bold = true })

  -- 语法高亮
  vim.api.nvim_set_hl(0, 'Comment', { fg = colors.lightgray })
  vim.api.nvim_set_hl(0, 'Constant', { fg = colors.red })
  vim.api.nvim_set_hl(0, 'String', { fg = colors.green })
  vim.api.nvim_set_hl(0, 'Character', { fg = colors.green })
  vim.api.nvim_set_hl(0, 'Number', { fg = colors.orange })
  vim.api.nvim_set_hl(0, 'Boolean', { fg = colors.red })
  vim.api.nvim_set_hl(0, 'Float', { fg = colors.orange })
  vim.api.nvim_set_hl(0, 'Identifier', { fg = colors.blue })
  vim.api.nvim_set_hl(0, 'Function', { fg = colors.magenta })
  vim.api.nvim_set_hl(0, 'Statement', { fg = colors.yellow, bold = true })
  vim.api.nvim_set_hl(0, 'Conditional', { fg = colors.yellow })
  vim.api.nvim_set_hl(0, 'Repeat', { fg = colors.yellow })
  vim.api.nvim_set_hl(0, 'Label', { fg = colors.yellow })
  vim.api.nvim_set_hl(0, 'Operator', { fg = colors.cyan })
  vim.api.nvim_set_hl(0, 'Keyword', { fg = colors.yellow })
  vim.api.nvim_set_hl(0, 'Exception', { fg = colors.red })
  vim.api.nvim_set_hl(0, 'PreProc', { fg = colors.darkcyan })
  vim.api.nvim_set_hl(0, 'Include', { fg = colors.darkcyan })
  vim.api.nvim_set_hl(0, 'Define', { fg = colors.darkcyan })
  vim.api.nvim_set_hl(0, 'Macro', { fg = colors.darkcyan })
  vim.api.nvim_set_hl(0, 'PreCondit', { fg = colors.darkcyan })
  vim.api.nvim_set_hl(0, 'Type', { fg = colors.blue, bold = true })
  vim.api.nvim_set_hl(0, 'StorageClass', { fg = colors.blue })
  vim.api.nvim_set_hl(0, 'Structure', { fg = colors.blue })
  vim.api.nvim_set_hl(0, 'Typedef', { fg = colors.blue })
  vim.api.nvim_set_hl(0, 'Special', { fg = colors.orange })
  vim.api.nvim_set_hl(0, 'SpecialChar', { fg = colors.orange })
  vim.api.nvim_set_hl(0, 'Tag', { fg = colors.orange })
  vim.api.nvim_set_hl(0, 'Delimiter', { fg = colors.white })
  vim.api.nvim_set_hl(0, 'SpecialComment', { fg = colors.lightgray, italic = true })
  vim.api.nvim_set_hl(0, 'Debug', { fg = colors.red })
  vim.api.nvim_set_hl(0, 'Underlined', { fg = colors.blue, underline = true })
  vim.api.nvim_set_hl(0, 'Ignore', { fg = colors.lightgray })
  vim.api.nvim_set_hl(0, 'Error', { fg = colors.red, bold = true })
  vim.api.nvim_set_hl(0, 'Todo', { fg = colors.yellow, bold = true })

  -- 搜索高亮
  vim.api.nvim_set_hl(0, 'Search', { fg = colors.black, bg = colors.yellow })
  vim.api.nvim_set_hl(0, 'IncSearch', { fg = colors.black, bg = colors.yellow })

  -- 弹出菜单
  vim.api.nvim_set_hl(0, 'Pmenu', { fg = colors.white, bg = colors.darkgray })
  vim.api.nvim_set_hl(0, 'PmenuSel', { fg = colors.black, bg = colors.blue })
  vim.api.nvim_set_hl(0, 'PmenuSbar', { fg = colors.darkgray, bg = colors.darkgray })
  vim.api.nvim_set_hl(0, 'PmenuThumb', { fg = colors.lightgray, bg = colors.lightgray })

  -- 标签页
  vim.api.nvim_set_hl(0, 'TabLine', { fg = colors.lightgray, bg = colors.black })
  vim.api.nvim_set_hl(0, 'TabLineFill', { fg = colors.lightgray, bg = colors.black })
  vim.api.nvim_set_hl(0, 'TabLineSel', { fg = colors.white, bg = colors.darkblue, bold = true })

  -- 状态行
  vim.api.nvim_set_hl(0, 'StatusLine', { fg = colors.white, bg = colors.darkblue, bold = true })
  vim.api.nvim_set_hl(0, 'StatusLineNC', { fg = colors.lightgray, bg = colors.black })

  -- 垂直分割
  vim.api.nvim_set_hl(0, 'VertSplit', { fg = colors.lightgray, bg = colors.black })

  -- 可视模式
  vim.api.nvim_set_hl(0, 'Visual', { bg = colors.darkblue })
  vim.api.nvim_set_hl(0, 'VisualNOS', { bg = colors.darkblue })

  -- 折叠
  vim.api.nvim_set_hl(0, 'Folded', { fg = colors.lightgray, bg = colors.black })
  vim.api.nvim_set_hl(0, 'FoldColumn', { fg = colors.lightgray, bg = colors.black })

  -- 差异
  vim.api.nvim_set_hl(0, 'DiffAdd', { fg = colors.black, bg = colors.green })
  vim.api.nvim_set_hl(0, 'DiffChange', { fg = colors.black, bg = colors.yellow })
  vim.api.nvim_set_hl(0, 'DiffDelete', { fg = colors.black, bg = colors.red })
  vim.api.nvim_set_hl(0, 'DiffText', { fg = colors.black, bg = colors.cyan })

  -- 拼写
  vim.api.nvim_set_hl(0, 'SpellBad', { fg = colors.white, bg = colors.red, underline = true })
  vim.api.nvim_set_hl(0, 'SpellCap', { fg = colors.white, bg = colors.blue, underline = true })
  vim.api.nvim_set_hl(0, 'SpellLocal', { fg = colors.white, bg = colors.cyan, underline = true })
  vim.api.nvim_set_hl(0, 'SpellRare', { fg = colors.white, bg = colors.magenta, underline = true })

  -- 消息
  vim.api.nvim_set_hl(0, 'ErrorMsg', { fg = colors.white, bg = colors.red, bold = true })
  vim.api.nvim_set_hl(0, 'WarningMsg', { fg = colors.black, bg = colors.yellow, bold = true })
  vim.api.nvim_set_hl(0, 'ModeMsg', { fg = colors.green })
  vim.api.nvim_set_hl(0, 'MoreMsg', { fg = colors.green })
  vim.api.nvim_set_hl(0, 'Question', { fg = colors.green })

  -- 光标
  vim.api.nvim_set_hl(0, 'Cursor', { fg = colors.black, bg = colors.white })
  vim.api.nvim_set_hl(0, 'CursorIM', { fg = colors.black, bg = colors.white })

  -- 其他
  vim.api.nvim_set_hl(0, 'Directory', { fg = colors.blue, bold = true })
  vim.api.nvim_set_hl(0, 'MatchParen', { fg = colors.black, bg = colors.yellow, bold = true })
  vim.api.nvim_set_hl(0, 'NonText', { fg = colors.mediumgray })
  vim.api.nvim_set_hl(0, 'SpecialKey', { fg = colors.mediumgray })
  vim.api.nvim_set_hl(0, 'Title', { fg = colors.yellow, bold = true })
  vim.api.nvim_set_hl(0, 'WildMenu', { fg = colors.black, bg = colors.yellow, bold = true })

  -- LSP 高亮
  vim.api.nvim_set_hl(0, 'LspReferenceText', { bg = colors.darkblue })
  vim.api.nvim_set_hl(0, 'LspReferenceRead', { bg = colors.darkblue })
  vim.api.nvim_set_hl(0, 'LspReferenceWrite', { bg = colors.darkblue })
  vim.api.nvim_set_hl(0, 'LspDiagnosticsDefaultError', { fg = colors.red })
  vim.api.nvim_set_hl(0, 'LspDiagnosticsDefaultWarning', { fg = colors.yellow })
  vim.api.nvim_set_hl(0, 'LspDiagnosticsDefaultInformation', { fg = colors.blue })
  vim.api.nvim_set_hl(0, 'LspDiagnosticsDefaultHint', { fg = colors.cyan })
  vim.api.nvim_set_hl(0, 'LspDiagnosticsUnderlineError', { underline = true })
  vim.api.nvim_set_hl(0, 'LspDiagnosticsUnderlineWarning', { underline = true })
  vim.api.nvim_set_hl(0, 'LspDiagnosticsUnderlineInformation', { underline = true })
  vim.api.nvim_set_hl(0, 'LspDiagnosticsUnderlineHint', { underline = true })

  -- Git 高亮
  vim.api.nvim_set_hl(0, 'GitSignsAdd', { fg = colors.green })
  vim.api.nvim_set_hl(0, 'GitSignsChange', { fg = colors.yellow })
  vim.api.nvim_set_hl(0, 'GitSignsDelete', { fg = colors.red })

  -- 树状视图
  vim.api.nvim_set_hl(0, 'NvimTreeNormal', { fg = colors.white, bg = colors.darkgray })
  vim.api.nvim_set_hl(0, 'NvimTreeFolderName', { fg = colors.blue, bold = true })
  vim.api.nvim_set_hl(0, 'NvimTreeOpenedFolderName', { fg = colors.blue })
  vim.api.nvim_set_hl(0, 'NvimTreeEmptyFolderName', { fg = colors.mediumgray })
  vim.api.nvim_set_hl(0, 'NvimTreeFolderIcon', { fg = colors.blue })
  vim.api.nvim_set_hl(0, 'NvimTreeIndentMarker', { fg = colors.mediumgray })
  vim.api.nvim_set_hl(0, 'NvimTreeRootFolder', { fg = colors.magenta, bold = true })
  vim.api.nvim_set_hl(0, 'NvimTreeSymlink', { fg = colors.cyan })
  vim.api.nvim_set_hl(0, 'NvimTreeFileNew', { fg = colors.green, bold = true })
  vim.api.nvim_set_hl(0, 'NvimTreeFileStaged', { fg = colors.green })
  vim.api.nvim_set_hl(0, 'NvimTreeFileDeleted', { fg = colors.red })
  vim.api.nvim_set_hl(0, 'NvimTreeFileMerge', { fg = colors.yellow })
  vim.api.nvim_set_hl(0, 'NvimTreeFileRenamed', { fg = colors.blue })
  vim.api.nvim_set_hl(0, 'NvimTreeFileDirty', { fg = colors.orange })
  vim.api.nvim_set_hl(0, 'NvimTreeExecFile', { fg = colors.green, bold = true })
  vim.api.nvim_set_hl(0, 'NvimTreeSpecialFile', { fg = colors.magenta, bold = true, underline = true })
end

-- 应用配色
function M.setup()
  vim.opt.background = 'dark'
  vim.g.colors_name = 'mycolorscheme'
  set_highlights()
end

return M
