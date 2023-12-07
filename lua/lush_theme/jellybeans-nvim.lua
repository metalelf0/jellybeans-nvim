--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is lua file, vim will append your file to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require("lush")
local hsl = lush.hsl

local foreground = hsl("#e8e8d3")
local background = hsl("#151515")
local grey = hsl("#888888")
local grey_one = hsl("#1c1c1c")
local grey_two = hsl("#f0f0f0")
local grey_three = hsl("#333333")
local regent_grey = hsl("#9098A0")
local scorpion = hsl("#606060")
local cod_grey = hsl("#101010")
local tundora = hsl("#404040")
local zambezi = hsl("#605958")
local silver_rust = hsl("#ccc5c4")
local silver = hsl("#c7c7c7")
local alto = hsl("#dddddd")
local gravel = hsl("#403c41")
local boulder = hsl("#777777")
local cocoa_brown = hsl("#302028")
local grey_chateau = hsl("#a0a8b0")
local bright_grey = hsl("#384048")
local shuttle_grey = hsl("#535d66")
local mine_shaft = hsl("#1f1f1f")
local temptress = hsl("#40000a")

local bayoux_blue = hsl("#556779")
local total_white = hsl("#ffffff")
local total_black = hsl("#000000")
local cadet_blue = hsl("#b0b8c0")
local perano = hsl("#b0d0f0")
local wewak = hsl("#f0a0c0")
local mantis = hsl("#70b950")
local raw_sienna = hsl("#cf6a4c")
local highland = hsl("#799d6a")
local hoki = hsl("#668799")
local green_smoke = hsl("#99ad6a")
local costa_del_sol = hsl("#556633")
local biloba_flower = hsl("#c6b6ee")
local morning_glory = hsl("#8fbfdc")
local goldenrod = hsl("#fad07a")
local ship_cove = hsl("#8197bf")
local koromiko = hsl("#ffb964")
local brandy = hsl("#dad085")
local old_brick = hsl("#902020")
local dark_blue = hsl("#0000df")
local ripe_plum = hsl("#540063")
local casal = hsl("#2D7067")
local purple = hsl("#700089")
local tea_green = hsl("#d2ebbe")
local dell = hsl("#437019")
local calypso = hsl("#2B5B77")

local theme = lush(function(injected_functions)
	local sym = injected_functions.sym

	return {
		-- The following are all the Neovim default highlight groups from the docs
		-- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
		-- probably style all of these at a bare minimum.
		--
		-- Referenced/linked groups must come before being referenced/lined,
		-- so the order shown ((mostly) alphabetical) is likely
		-- not the order you will end up with.
		--
		-- You can uncomment these and leave them empty to disable any
		-- styling for that group (meaning they mostly get styled as Normal)
		-- or leave them commented to apply vims default colouring or linking.

		Comment({ fg = grey }), -- any comment
		ColorColumn({ bg = total_black }), -- used for the columns set with 'colorcolumn'
		Conceal({ fg = morning_glory }), -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor({ fg = background, bg = perano }), -- character under the cursor
		-- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
		-- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
		CursorColumn({ bg = grey_one }), -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine({ bg = grey_one }), -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
		Directory({ fg = brandy }), -- directory names (and other special names in listings)
		DiffAdd({ fg = tea_green, bg = dell }), -- diff mode: Added line |diff.txt|
		DiffChange({ bg = calypso }), -- diff mode: Changed line |diff.txt|
		DiffDelete({ fg = temptress, bg = purple }), -- diff mode: Deleted line |diff.txt|
		DiffText({ fg = morning_glory, bg = total_black }), -- diff mode: Changed text within a changed line |diff.txt|
		-- EndOfBuffer  { }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
		-- TermCursor   { }, -- cursor in a focused terminal
		-- TermCursorNC { }, -- cursor in an unfocused terminal
		ErrorMsg({ bg = old_brick }), -- error messages on the command line
		VertSplit({ fg = gravel }), -- the column separating vertically split windows (deprecated)
		WinSeparator({ fg = gravel }), -- the line separating split windows
		Folded({ fg = grey_chateau, bg = bright_grey }), -- line used for closed folds
		FoldColumn({ fg = shuttle_grey, bg = mine_shaft }), -- 'foldcolumn'
		SignColumn({ fg = boulder }), -- column where |signs| are displayed
		-- IncSearch    { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		-- Substitute   { }, -- |:substitute| replacement text highlighting
		LineNr({ fg = zambezi }), -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		CursorLineNr({ fg = silver_rust }), -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		MatchParen({ fg = wewak, gui = "bold" }), -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		-- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
		-- MsgArea      { }, -- Area for messages and cmdline
		-- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg({ fg = highland }), -- |more-prompt|
		NonText({ fg = scorpion }), -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal({ bg = background, fg = foreground }), -- normal text
		-- NormalFloat  { }, -- Normal text in floating windows.
		-- NormalNC     { }, -- normal text in non-current windows
		Pmenu({ fg = total_white, bg = background.lighten(4) }), -- Popup menu: normal item.
		PmenuSel({ fg = total_black, bg = ship_cove, gui = "bold" }), -- Popup menu: selected item.
		-- PmenuSbar    { }, -- Popup menu: scrollbar.
		-- PmenuThumb   { }, -- Popup menu: Thumb of the scrollbar.
		Question({ fg = mantis }), -- |hit-enter| prompt and yes/no questions
		QuickFixLine({ bg = bright_grey }), -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search({ fg = wewak, bg = cocoa_brown }), -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
		SpecialKey({ fg = tundora, bg = grey_one }), -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad({ bg = old_brick }), -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap({ bg = dark_blue }), -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal({ bg = casal }), -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare({ bg = ripe_plum }), -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine({ fg = total_white, bg = grey_one }), -- status line of current window
		StatusLineNC({ fg = silver, bg = grey_one }), -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine({ fg = cadet_blue, bg = total_black }), -- tab pages line, not active tab page label
		TabLineFill({ fg = regent_grey }), -- tab pages line, where there are no labels
		TabLineSel({ fg = mantis, bg = total_black }), -- tab pages line, active tab page label
		Title({ fg = mantis }), -- titles for output from ":set all", ":autocmd" etc.
		Visual({ bg = tundora }), -- Visual mode selection
		-- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
		-- WarningMsg   { }, -- warning messages
		-- Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		WildMenu({ fg = wewak, bg = cocoa_brown }), -- current match in 'wildmenu' completion

		-- These groups are not listed as default vim groups,
		-- but they are defacto standard group names for syntax highlighting.
		-- commented out groups should chain up to their "preferred" group by
		-- default,
		-- Uncomment and edit if you want more specific syntax highlighting.

		Constant({ fg = raw_sienna }), -- (preferred) any constant
		String({ fg = green_smoke }), --   a string constant: "this is a string"
		StringDelimiter({ fg = costa_del_sol }),
		-- Character      { }, --  a character constant: 'c', '\n'
		-- Number         { }, --   a number constant: 234, 0xff
		-- Boolean        { }, --  a boolean constant: TRUE, false
		-- Float          { }, --    a floating point constant: 2.3e10

		Identifier({ fg = biloba_flower }), -- (preferred) any variable name
		Function({ fg = goldenrod }), -- function name (also: methods for classes)

		Statement({ fg = perano }), -- (preferred) any statement
		-- Conditional    { }, --  if, then, else, endif, switch, etc.
		-- Repeat         { }, --   for, do, while, etc.
		-- Label          { }, --    case, default, etc.
		Operator({ fg = morning_glory }), -- "sizeof", "+", "*", etc.
		-- Keyword        { }, --  any other keyword
		-- Exception      { }, --  try, catch, throw

		PreProc({ fg = ship_cove }), -- (preferred) generic Preprocessor
		Include({ PreProc, gui = "italic" }), --  preprocessor #include
		-- Define         { }, --   preprocessor #define
		-- Macro          { }, --    same as Define
		-- PreCondit      { }, --  preprocessor #if, #else, #endif, etc.

		Type({ fg = koromiko, gui = "italic" }), -- (preferred) int, long, char, etc.
		-- StorageClass   { }, -- static, register, volatile, etc.
		Structure({ fg = morning_glory }), --  struct, union, enum, etc.
		-- Typedef        { }, --  A typedef

		Special({ fg = hsl(155, 30, 65) }), -- highland -- (preferred) any special symbol
		-- SpecialChar    { }, --  special character in a constant
		-- Tag            { }, --    you can use CTRL-] on this
		Delimiter({ fg = hoki }), --  character that needs attention
		-- SpecialComment { }, -- special things inside a comment
		-- Debug          { }, --    debugging statements

		Underlined({ gui = "underline" }), -- (preferred) text that stands out, HTML links
		Bold({ gui = "bold" }),
		Italic({ gui = "italic" }),

		-- ("Ignore", below, may be invisible...)
		-- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

		Error({ bg = old_brick }), -- (preferred) any erroneous construct

		Todo({ fg = silver }), -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

		-- These groups are for the native LSP client. Some other LSP clients may
		-- use these groups, or use their own. Consult your LSP client's
		-- documentation.

		LspReferenceText({ bg = background.lighten(8) }), -- used for highlighting "text" references
		LspReferenceRead({ bg = background.lighten(8) }), -- used for highlighting "read" references
		LspReferenceWrite({ bg = background.lighten(8) }), -- used for highlighting "write" references

		LspDiagnosticsDefaultError({ fg = old_brick.lighten(20) }), -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
		LspDiagnosticsDefaultWarning({ fg = koromiko }), -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
		LspDiagnosticsDefaultInformation({ fg = perano }), -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
		LspDiagnosticsDefaultHint({ fg = tea_green }), -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

		LspDiagnosticsVirtualTextError({ LspDiagnosticsDefaultError, bg = old_brick.darken(72) }), -- Used for "Error" diagnostic virtual text
		LspDiagnosticsVirtualTextWarning({ LspDiagnosticsDefaultWarning, bg = koromiko.darken(88) }), -- Used for "Warning" diagnostic virtual text
		LspDiagnosticsVirtualTextInformation({ LspDiagnosticsDefaultInformation, bg = perano.darken(87) }), -- Used for "Information" diagnostic virtual text
		LspDiagnosticsVirtualTextHint({ LspDiagnosticsDefaultHint, bg = tea_green.darken(90) }), -- Used for "Hint" diagnostic virtual text

		LspDiagnosticsUnderlineError({ sp = old_brick.lighten(20), gui = "undercurl" }), -- Used to underline "Error" diagnostics
		LspDiagnosticsUnderlineWarning({ sp = koromiko, gui = "undercurl" }), -- Used to underline "Warning" diagnostics
		LspDiagnosticsUnderlineInformation({ sp = perano, gui = "undercurl" }), -- Used to underline "Information" diagnostics
		LspDiagnosticsUnderlineHint({ sp = tea_green, gui = "undercurl" }), -- Used to underline "Hint" diagnostics

		-- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
		-- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
		-- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
		-- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

		-- LspDiagnosticsSignError              { }, -- Used for "Error" signs in sign column
		-- LspDiagnosticsSignWarning            { }, -- Used for "Warning" signs in sign column
		-- LspDiagnosticsSignInformation        { }, -- Used for "Information" signs in sign column
		-- LspDiagnosticsSignHint               { }, -- Used for "Hint" signs in sign column

		-- These groups are for the neovim tree-sitter highlights.
		-- As of writing, tree-sitter support is a WIP, group names may change.
		-- By default, most of these groups link to an appropriate Vim group,
		-- TSError -> Error for example, so you do not have to define these unless
		-- you explicitly want to support Treesitter's improved syntax awareness.

		-- TSAnnotation                 { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
		-- TSAttribute                  { };    -- (unstable) TODO: docs
		-- TSBoolean                    { };    -- For booleans.
		-- TSCharacter                  { };    -- For characters.
		-- TSComment                    { };    -- For comment blocks.
		-- TSConstructor                { };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
		-- TSConditional                { };    -- For keywords related to conditionnals.
		-- TSConstant                   { };    -- For constants
		-- TSConstBuiltin               { };    -- For constant that are built in the language: `nil` in Lua.
		-- TSConstMacro                 { };    -- For constants that are defined by macros: `NULL` in C.
		-- TSError                      { };    -- For syntax/parser errors.
		-- TSException                  { };    -- For exception related keywords.
		-- TSField                      { };    -- For fields.
		-- TSFloat                      { };    -- For floats.
		-- TSFunction                   { };    -- For function (calls and definitions).
		-- TSFuncBuiltin                { };    -- For builtin functions: `table.insert` in Lua.
		-- TSFuncMacro                  { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
		-- TSInclude                    { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
		-- TSKeyword                    { };    -- For keywords that don't fall in previous categories.
		-- TSKeywordFunction            { };    -- For keywords used to define a fuction.
		-- TSLabel                      { };    -- For labels: `label:` in C and `:label:` in Lua.
		-- TSMethod                     { };    -- For method calls and definitions.
		sym("@namespace")({ fg = wewak }), -- For identifiers referring to modules and namespaces.
		-- TSNone                       { };    -- TODO: docs
		-- TSNumber                     { };    -- For all numbers
		-- TSOperator                   { };    -- For any operator: `+`, but also `->` and `*` in C.
		-- TSParameter                  { };    -- For parameters of a function.
		-- TSParameterReference         { };    -- For references to parameters of a function.
		-- TSProperty                   { };    -- Same as `TSField`.
		-- TSPunctDelimiter             { };    -- For delimiters ie: `.`
		-- TSPunctBracket               { };    -- For brackets and parens.
		-- TSPunctSpecial               { };    -- For special punctutation that does not fall in the catagories before.
		-- TSRepeat                     { };    -- For keywords related to loops.
		-- TSString                     { };    -- For strings.
		-- TSStringRegex                { };    -- For regexes.
		-- TSStringEscape               { };    -- For escape characters within a string.
		-- TSSymbol                     { };    -- For identifiers referring to symbols or atoms.
		-- TSType                       { };    -- For types.
		-- TSTypeBuiltin                { };    -- For builtin types.
		sym("@variable")({ Normal }), -- Any variable name that does not have another highlight.
		-- TSVariableBuiltin            { };    -- Variable names that are defined by the languages, like `this` or `self`.

		-- TSTag                        { };    -- Tags like html tag names.
		sym("@tag.delimiter")({ fg = bayoux_blue }), -- Tag delimiter like `<` `>` `/`
		-- TSText                       { };    -- For strings considered text in a markup language.
		sym("@text.emphasis")({ Italic }), -- For text to be represented with emphasis.
		sym("@text.underline")({ Underlined }), -- For text to be represented with an underline.
		sym("@text.strike")({ gui = "strikethrough" }), -- For strikethrough text.
		-- TSTitle                      { };    -- Text that is part of a title.
		-- TSLiteral                    { };    -- Literal text.
		sym("@text.uri")({ fg = morning_glory }), -- Any URI like a link or email.

		-- HTML
		htmlLink({}),

		-- GitSigns
		GitSignsAdd({ fg = mantis }),
		GitSignsChange({ fg = koromiko }),
		GitSignsDelete({ fg = old_brick.lighten(20) }),

		-- Telescope
		TelescopeBorder({ fg = ship_cove }),
		TelescopeSelection({ fg = ship_cove.lighten(46), bg = ship_cove.darken(74) }),
		TelescopeMatching({ Search }),
		TelescopeSelectionCaret({ fg = koromiko }),
		TelescopePromptPrefix({ fg = koromiko }),

		-- vim-sneak

		Sneak({ Search }),

		-- nvim-tree

		NvimTreeRootFolder({ Directory, gui = "bold" }),

		NvimTreeGitDirty({ GitSignsChange }),
		NvimTreeGitStaged({ fg = tea_green }),
		NvimTreeGitMerge({ GitSignsChange }),
		NvimTreeGitRenamed({ GitSignsChange }),
		NvimTreeGitNew({ GitSignsAdd }),
		NvimTreeGitDeleted({ GitSignsDelete }),
	}
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
