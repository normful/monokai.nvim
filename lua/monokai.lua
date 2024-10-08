local monokai = {
  base0 = '#1B2229',
  base1 = '#1c1f24',
  base2 = '#202328',
  base3 = '#23272e',
  base4 = '#3f444a',
  base5 = '#5B6268',
  base6 = '#73797e',
  base7 = '#9ca0a4',
  base8 = '#b1b1b1',
  bg = '#000000',
  border = '#504945',
  bg_popup = '#333842',
  bg_highlight = '#2E323C',
  fg = '#f8f8f0',
  fg_alt = '#5B6268',
  white = '#f8f8f0',
  grey = '#8F908A',
  darkgrey = '#64645e',
  black = '#000000',
  pink = '#f92672',
  green = '#a6e22e',
  dark_green = '#37a906',
  aqua = '#66d9ef',
  cyan = '#A1EFE4',
  yellow = '#e6db74',
  orange = '#fd971f',
  purple = '#ae81ff',
  light_purple = '#d6d0f0',
  red = '#e95678',
  purered = '#ff0000',
  darkred = '#5f0000',
  addfg = '#d7ffaf',
  addbg = '#5f875f',
  delfg = '#ff8b8b',
  delbg = '#f75f5f',
  changefg = '#d7d7ff',
  changebg = '#5f5f87',
  alternate_green = '#9EC400',
  alternate_yellow = '#E7C547',
  alternate_blue = '#7AA6DA',
  alternate_purple = '#B77EE0',
  alternate_cyan = '#54CED6',
  alternate_white = '#FFFFFF',
  none = 'NONE',
}

function monokai.terminal_color()
  vim.g.terminal_color_0 = monokai.bg
  vim.g.terminal_color_1 = monokai.red
  vim.g.terminal_color_2 = monokai.green
  vim.g.terminal_color_3 = monokai.yellow
  vim.g.terminal_color_4 = monokai.aqua
  vim.g.terminal_color_5 = monokai.purple
  vim.g.terminal_color_6 = monokai.cyan
  vim.g.terminal_color_7 = monokai.white
  vim.g.terminal_color_8 = monokai.darkgrey
  vim.g.terminal_color_9 = monokai.pink
  vim.g.terminal_color_10 = monokai.alternate_green
  vim.g.terminal_color_11 = monokai.alternate_yellow
  vim.g.terminal_color_12 = monokai.alternate_blue
  vim.g.terminal_color_13 = monokai.alternate_purple
  vim.g.terminal_color_14 = monokai.alternate_cyan
  vim.g.terminal_color_15 = monokai.alternate_white
end

function monokai.highlight(group, color)
  local style = color.style and 'gui=' .. color.style or 'gui=NONE'

  if color.style == 'undercurl' then
    style = style .. ' cterm=undercurl'
  end

  local fg = color.fg and 'guifg = ' .. color.fg or 'guifg = NONE'
  local bg = color.bg and 'guibg = ' .. color.bg or 'guibg = NONE'
  local sp = color.sp and 'guisp = ' .. color.sp or ''
  vim.api.nvim_command('highlight ' .. group .. ' ' .. style .. ' ' .. fg .. ' ' .. bg .. ' ' .. sp)
end

function monokai.load_syntax()
  local syntax = {
    Normal = {
      fg = monokai.fg,
      bg = monokai.bg,
    },
    Cursor = {
      fg = monokai.none,
      bg = monokai.none,
      style = 'reverse',
    },
    ColorColumn = {
      fg = monokai.none,
      bg = monokai.bg,
    },
    CursorLine = {
      fg = monokai.none,
      bg = monokai.bg_highlight,
    },
    NonText = {
      fg = monokai.border,
    },
    Visual = {
      bg = monokai.base4,
    },
    VisualNOS = {
      bg = monokai.base4,
    },
    Search = {
      fg = monokai.bg,
      bg = monokai.yellow,
    },
    IncSearch = {
      fg = monokai.bg,
      bg = monokai.yellow,
    },
    MatchParen = {
      fg = monokai.pink,
      bg = monokai.none,
    },
    Question = {
      fg = monokai.yellow,
    },
    ModeMsg = {
      fg = monokai.fg,
      bg = monokai.none,
      style = 'bold',
    },
    MoreMsg = {
      fg = monokai.fg,
      bg = monokai.none,
      style = 'bold',
    },
    ErrorMsg = {
      fg = monokai.red,
      bg = monokai.none,
      style = 'bold',
    },
    WarningMsg = {
      fg = monokai.yellow,
      bg = monokai.none,
      style = 'bold',
    },
    VertSplit = {
      fg = monokai.border,
      bg = monokai.bg,
    },
    LineNr = {
      fg = monokai.base6,
    },
    CursorLineNr = {
      fg = monokai.base8,
    },
    SignColumn = {
      fg = monokai.fg,
      bg = monokai.bg,
    },
    StatusLine = {
      fg = monokai.base8,
      bg = monokai.base2,
      style = monokai.none,
    },
    StatusLineNC = {
      fg = monokai.grey,
      bg = monokai.base2,
      style = monokai.none,
    },
    Tabline = {
      style = monokai.none,
    },
    TabLineFill = {
      style = monokai.none,
    },
    TabLineSel = {
      bg = monokai.bg_popup,
    },
    SpellBad = {
      fg = monokai.red,
      bg = monokai.none,
      style = 'undercurl',
    },
    SpellCap = {
      fg = monokai.purple,
      bg = monokai.none,
      style = 'undercurl',
    },
    SpellRare = {
      fg = monokai.aqua,
      bg = monokai.none,
      style = 'undercurl',
    },
    SpellLocal = {
      fg = monokai.pink,
      bg = monokai.none,
      style = 'undercurl',
    },
    SpecialKey = {
      fg = monokai.pink,
    },
    Title = {
      fg = monokai.yellow,
      style = 'bold',
    },
    Directory = {
      fg = monokai.aqua,
      bg = monokai.none,
    },
    DiffAdd = {
      fg = monokai.addfg,
      bg = monokai.addbg,
    },
    DiffChange = {
      fg = monokai.delfg,
      bg = monokai.delbg,
    },
    DiffDelete = {
      fg = monokai.changefg,
      bg = monokai.changebg,
    },
    DiffText = {
      fg = monokai.black,
      bg = monokai.aqua,
    },
    Folded = {
      fg = monokai.grey,
      bg = monokai.bg_highlight,
    },
    FoldColumn = {
      fg = monokai.fg_alt,
      bg = monokai.black,
    },
    Pmenu = {
      fg = monokai.fg,
      bg = monokai.bg_popup,
    },
    PmenuSel = {
      fg = monokai.bg_popup,
      bg = monokai.orange,
    },
    PmenuSelBold = {
      fg = monokai.bg_popup,
      bg = monokai.orange,
    },
    PmenuThumb = {
      fg = monokai.purple,
      bg = monokai.green,
    },
    PmenuSbar = {
      fg = monokai.none,
      bg = monokai.base4,
    },
    Constant = {
      fg = monokai.aqua,
    },
    Number = {
      fg = monokai.purple,
    },
    Float = {
      fg = monokai.purple,
    },
    Boolean = {
      fg = monokai.purple,
    },
    Character = {
      fg = monokai.yellow,
    },
    String = {
      fg = monokai.yellow,
    },
    Type = {
      fg = monokai.aqua,
    },
    Structure = {
      fg = monokai.aqua,
    },
    StorageClass = {
      fg = monokai.aqua,
    },
    Typedef = {
      fg = monokai.aqua,
    },
    Identifier = {
      fg = monokai.white,
    },
    Function = {
      fg = monokai.green,
    },
    Statement = {
      fg = monokai.pink,
    },
    Operator = {
      fg = monokai.pink,
    },
    Label = {
      fg = monokai.yellow,
    },
    Keyword = {
      fg = monokai.pink,
    },
    PreProc = {
      fg = monokai.green,
    },
    Include = {
      fg = monokai.pink,
    },
    Define = {
      fg = monokai.pink,
    },
    Macro = {
      fg = monokai.pink,
    },
    PreCondit = {
      fg = monokai.pink,
    },
    Special = {
      fg = monokai.white,
    },
    SpecialChar = {
      fg = monokai.pink,
    },
    Delimiter = {
      fg = monokai.fg,
    },
    SpecialComment = {
      fg = monokai.grey,
    },
    Tag = {
      fg = monokai.orange,
    },
    Todo = {
      fg = monokai.orange,
    },
    Comment = {
      fg = monokai.base6,
    },
    Underlined = {
      fg = monokai.none,
      style = 'underline',
    },
    Ignore = {
      fg = monokai.none,
    },
    Error = {
      fg = monokai.red,
    },
    Terminal = {
      fg = monokai.fg,
      bg = monokai.bg,
    },
    EndOfBuffer = {
      fg = monokai.bg,
      bg = monokai.none,
    },
    Conceal = {
      fg = monokai.grey,
      bg = monokai.none,
    },
    vCursor = {
      fg = monokai.none,
      bg = monokai.none,
      style = 'reverse',
    },
    iCursor = {
      fg = monokai.none,
      bg = monokai.none,
      style = 'reverse',
    },
    lCursor = {
      fg = monokai.none,
      bg = monokai.none,
      style = 'reverse',
    },
    CursorIM = {
      fg = monokai.none,
      bg = monokai.none,
      style = 'reverse',
    },
    CursorColumn = {
      fg = monokai.none,
      bg = monokai.bg_highlight,
    },
    Whitespace = {
      fg = monokai.base4,
    },
    WildMenu = {
      fg = monokai.fg,
      bg = monokai.orange,
    },
    NormalFloat = {
      fg = monokai.base8,
      bg = monokai.bg_highlight,
    },
    QuickFixLine = {
      fg = monokai.purple,
      style = 'bold',
    },
    Debug = {
      fg = monokai.orange,
    },
    debugBreakpoint = {
      fg = monokai.bg,
      bg = monokai.red,
    },
    Conditional = {
      fg = monokai.pink,
    },
    Repeat = {
      fg = monokai.pink,
    },
    Exception = {
      fg = monokai.purered,
    },
  }
  return syntax
end

function monokai.load_plugin_syntax()
  local plugin_syntax = {
    TSParameterReference = { fg = monokai.white },
    TSVariable = { fg = monokai.white },
    TSParameter = { fg = monokai.white },
    TSProperty = { fg = monokai.white },
    TSConstructor = { fg = monokai.white },
    TSConstant = { fg = monokai.white },
    TSConstBuiltin = { fg = monokai.white },

    TSPunctBracket = { fg = monokai.fg_alt },
    TSPunctDelimiter = { fg = monokai.fg_alt },
    TSPunctSpecial = { fg = monokai.fg_alt },

    TSOperator = { fg = monokai.pink },
    TSStringEscape = { fg = monokai.pink },
    TSKeyword = { fg = monokai.pink },
    TSKeywordFunction = { fg = monokai.pink },
    TSKeywordOperator = { fg = monokai.pink },
    TSConditional = { fg = monokai.pink },
    TSRepeat = { fg = monokai.pink },
    TSInclude = { fg = monokai.pink },

    TSFunction = { fg = monokai.green },
    TSMethod = { fg = monokai.green },
    TSFuncBuiltin = { fg = monokai.green },

    TSFloat = { fg = monokai.purple },
    TSBoolean = { fg = monokai.purple },
    TSNumber = { fg = monokai.purple },
    TSVariableBuiltin = { fg = monokai.purple },

    TSError = { fg = monokai.red },
    TSException = { fg = monokai.red },

    TSAttribute = { fg = monokai.orange },
    TSField = { fg = monokai.orange },

    TSType = { fg = monokai.light_purple },
    TSTypeBuiltin = { fg = monokai.aqua },

    TSTag = { fg = monokai.dark_green },
    TSTagDelimiter = { fg = monokai.dark_green },

    TSString = { fg = monokai.yellow },

    TSStringRegex = { fg = monokai.base7 },
    TSURI = { fg = monokai.base6 },

    TSUnderline = { fg = monokai.none, style = 'underline' },

    -- No examples exist in currently used languages parsed by treesitter,
    -- so all are set to unique random obvious colors,
    -- to be easily noticed in the future.
    TSStructure = { fg = '#C6BDEA' },
    TSCharacter = { fg = '#0310EA' },
    TSAnnotation = { fg = '#037A90' },
    TSLabel = { fg = '#FEC763' },
    TSConstMacro = { fg = '#604340' },
    TSEmphasis = { fg = '#FDC7D7' },
    TSNamespace = { fg = '#FDF200' },
    TSFuncMacro = { fg = '#FDF200' },

    TSStrong = { fg = monokai.none, style = 'bold' },

    TSLiteral = { fg = monokai.yellow },
    TSText = { fg = monokai.yellow },
    TSTitle = { fg = monokai.yellow },

    -- See `:h lsp-highlight`

    LspReferenceText = { fg = monokai.white },
    LspReferenceRead = { fg = monokai.orange },
    LspReferenceWrite = { fg = monokai.aqua },

    LspDiagnosticsDefaultError = { fg = monokai.red },
    LspDiagnosticsDefaultWarning = { fg = monokai.yellow },
    LspDiagnosticsDefaultInformation = { fg = monokai.white },
    LspDiagnosticsDefaultHint = { fg = monokai.aqua },

    LspDiagnosticsVirtualTextError = { fg = monokai.red },
    LspDiagnosticsVirtualTextWarning = { fg = monokai.yellow },
    LspDiagnosticsVirtualTextInformation = { fg = monokai.white },
    LspDiagnosticsVirtualTextHint = { fg = monokai.aqua },

    LspDiagnosticsUnderlineError = { style = 'undercurl', sp = monokai.red },
    LspDiagnosticsUnderlineWarning = { style = 'undercurl', sp = monokai.yellow },
    LspDiagnosticsUnderlineInformation = { style = 'undercurl', sp = monokai.white },
    LspDiagnosticsUnderlineHint = { style = 'undercurl', sp = monokai.aqua },

    LspDiagnosticsFloatingError = { fg = monokai.red },
    LspDiagnosticsFloatingWarning = { fg = monokai.yellow },
    LspDiagnosticsFloatingInformation = { fg = monokai.white },
    LspDiagnosticsFloatingHint = { fg = monokai.aqua },

    LspDiagnosticsSignError = { fg = monokai.red },
    LspDiagnosticsSignWarning = { fg = monokai.yellow },
    LspDiagnosticsSignInformation = { fg = monokai.white },
    LspDiagnosticsSignHint = { fg = monokai.aqua },

    LspCodeLens = { fg = monokai.cyan },
    LspCodeLensSeparator = { fg = monokai.purple },
    LspSignatureActiveParameter = { fg = monokai.green },

    -- End of highlight groups documented in `:h lsp-highlight`

    CursorWord0 = { bg = monokai.white },
    CursorWord1 = { bg = monokai.white },

    NvimTreeFolderName = { fg = monokai.white },
    NvimTreeRootFolder = { fg = monokai.pink },
    NvimTreeSpecialFile = { fg = monokai.fg, bg = monokai.none, style = 'NONE' },

    TelescopeBorder = { fg = monokai.aqua },
    TelescopePromptBorder = { fg = monokai.aqua },

    dbui_tables = { fg = monokai.white },
  }
  return plugin_syntax
end

local async_load_plugin

async_load_plugin = vim.loop.new_async(vim.schedule_wrap(function()
  monokai.terminal_color()
  local syntax = monokai.load_plugin_syntax()
  for group, colors in pairs(syntax) do
    monokai.highlight(group, colors)
  end
  async_load_plugin:close()
end))

function monokai.get_colors()
  return monokai
end

function monokai.colorscheme()
  vim.api.nvim_command('hi clear')
  if vim.fn.exists('syntax_on') then
    vim.api.nvim_command('syntax reset')
  end
  vim.o.background = 'dark'
  vim.o.termguicolors = true
  vim.g.colors_name = 'monokai'
  local syntax = monokai.load_syntax()
  for group, colors in pairs(syntax) do
    monokai.highlight(group, colors)
  end
  async_load_plugin:send()
end

monokai.colorscheme()

return monokai
