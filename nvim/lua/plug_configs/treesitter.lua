local status_ok, treesitter = pcall(require, "nvim-treesitter.configs")
if (not status_ok) then
    return
end

local ft_to_parser = require "nvim-treesitter.parsers".filetype_to_parsername
ft_to_parser.motoko = "typescript"

treesitter.setup({
    ensure_installed = {
        "css",
        "html",
        "javascript",
        "json",
        "markdown",
        "python",
        "rust",
        "scss",
        "solidity",
        "tsx",
        "typescript",
        "lua"
    },
    -- one of "all" or a list of languages
    sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
    ignore_install = { "" }, -- List of parsers to ignore installing
    highlight = {
        enable = true, -- false will disable the whole extension
        -- disable = { "css", "html" }, -- list of language that will be disabled
        disable = { "markdown" }, -- list of language that will be disabled
        -- additional_vim_regex_highlighting = true,
    },
    autopairs = {
        enable = true,
    },
    indent = {
        enable = true,
        disable = {
            "python",
            "css"
        }
    },
    context_commentstring = {
        enable = true,
        enable_autocmd = false,
    },
    autotag = {
        enable = true,
        disable = { "xml" },
    },
    rainbow = {
        enable = true,
        disable = { "html" },
    },
    playground = {
        enable = true,
    },
})
