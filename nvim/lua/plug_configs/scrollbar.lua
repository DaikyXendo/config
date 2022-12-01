local scrollbar_setup, scrollbar = pcall(require, "scrollbar")
if not scrollbar_setup then
    return
end

-- import hlslens safely
local hlslens_setup, hlslens = pcall(require, "hlslens")
if not hlslens_setup then
    return
end

scrollbar.setup({
    marks = {
        Search = { color = "#FFA500" },
        Error = { color = "#FF0000" },
        Warn = { color = "#FFFF00" },
        Info = { color = "#00FF00" },
        Hint = { color = "#0000FF" },
        Misc = { color = "#6A0DAD" },
    },
})

hlslens.setup({
    require("scrollbar.handlers.search").setup()
})

vim.cmd([[
   augroup scrollbar_search_hide
       autocmd!
       autocmd CmdlineLeave : lua require('scrollbar.handlers.search').handler.hide()
   augroup END
]])
