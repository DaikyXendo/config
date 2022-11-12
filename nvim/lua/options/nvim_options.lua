local options = {
    backup = false, -- creates a backup file
    clipboard = "unnamedplus", -- allows neovim to access the system clipboard
    cmdheight = 1, -- more space in the neovim command line for displaying messages
    conceallevel = 0, -- so that `` is visible in markdown files
    fileencoding = "utf-8", -- the encoding written to a file
    hlsearch = true, -- highlight all matches on previous search pattern
    ignorecase = true, -- ignore case in search patterns
    mouse = "a", -- allow the mouse to be used in neovim
    pumheight = 10, -- pop up menu height                                               -- we don't need to see things like -- INSERT -- anymore
    showtabline = 0, -- always show tabs
    smartcase = true, -- smart case
    smartindent = true, -- make indenting smarter again
    splitbelow = true, -- force all horizontal splits to go below current window
    splitright = true, -- force all vertical splits to go to the right of current window
    swapfile = false, -- creates a swapfile
    termguicolors = true, -- set term gui colors (most terminals support this)
    timeoutlen = 1000, -- time to wait for a mapped sequence to complete (in milliseconds)
    undofile = true, -- enable persistent undo
    updatetime = 0, -- faster completion (4000ms default)
    writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
    expandtab = true, -- convert tabs to spaces
    shiftwidth = 4, -- the number of spaces inserted for each indentation
    tabstop = 4, -- insert 4 spaces for a tab
    cursorline = true, -- highlight the current line
    number = true, -- set numbered lines
    laststatus = 3,
    showcmd = false,
    ruler = false,
    numberwidth = 4, -- set number column width to 4
    signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
    wrap = false, -- display lines as one long line
    scrolloff = 10, -- is one of my fav
    sidescrolloff = 10,
    hidden = true, -- coc
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.cmd('colorscheme onedarkpro')

-- Disable comment in next line
vim.cmd('autocmd FileType * setlocal formatoptions-=cro')

vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#61afef", fg = "#282c34" })
