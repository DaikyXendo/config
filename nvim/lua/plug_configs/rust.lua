local status_ok, crates = pcall(require, "crates")
if not status_ok then
    return
end

local status_ok2, rust_tools = pcall(require, "rust-tools")
if not status_ok2 then
    return
end

crates.setup {
    popup = {
        -- autofocus = true,
        style = "minimal",
        border = "rounded",
        show_version_date = false,
        show_dependency_version = true,
        max_height = 30,
        min_width = 20,
        padding = 1,
    },
    null_ls = {
        enabled = false,
        name = "crates.nvim",
    },
}

rust_tools.setup({
    tools = {
        server = {
            on_attach = function(_, bufnr)
                -- Hover actions
                vim.keymap.set("n", "<C-Space>", rust_tools.hover_actions.hover_actions, { buffer = bufnr })
                -- Code action groups
                vim.keymap.set("n", "<Space>a", rust_tools.code_action_group.code_action_group, { buffer = bufnr })
            end,
        },
        crate_graph = {
            backend = "png",
        },
        output = "D:/Graphviz/"
    }
})
