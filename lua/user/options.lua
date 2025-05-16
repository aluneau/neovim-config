local set = vim.opt
---------------- vim options  ----------------
set.number = true  -- shows line numbers
-- Editor options

set.relativenumber = true -- Show the line number relative to the line with the cursor in front of each line.
set.clipboard = "unnamedplus" -- uses the clipboard register for all operations except yank.
set.syntax = "on" -- When this option is set, the syntax with this name is loaded.
set.autoindent = true -- Copy indent from current line when starting a new line.
set.smartindent = false 
set.cursorline = true -- Highlight the screen line of the cursor with CursorLine.
set.expandtab = true -- In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
set.shiftwidth = 2 -- Number of spaces to use for each step of (auto)indent.
set.tabstop = 2 -- Number of spaces that a <Tab> in the file counts for.
set.encoding = "UTF-8" -- Sets the character encoding used inside Vim.
set.ruler = true -- Show the line and column number of the cursor position, separated by a comma.
set.mouse = "a" -- Enable the use of the mouse. "a" you can use on all modes
set.title = true -- When on, the title of the window will be set to the value of 'titlestring'
set.hidden = true -- When on a buffer becomes hidden when it is |abandon|ed
set.ttimeoutlen = 0 -- The time in milliseconds that is waited for a key code or mapped key sequence to complete.
set.wildmenu = true -- When 'wildmenu' is on, command-line completion operates in an enhanced mode.
set.showcmd = true -- Show (partial) command in the last line of the screen. Set this option off if your terminal is slow.
set.showmatch = true -- When a bracket is inserted, briefly jump to the matching one.
set.inccommand = "split" -- When nonempty, shows the effects of :substitute, :smagic, :snomagic and user commands with the :command-preview flag as you type.
set.splitright = true
set.splitbelow = true -- When on, splitting a window will put the new window below the current one
set.termguicolors = true


