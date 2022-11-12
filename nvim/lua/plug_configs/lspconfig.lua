local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
    -- Formatting
    if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_command [[augroup Format]]
        vim.api.nvim_command [[autocmd! * <buffer>]]
        vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
        vim.api.nvim_command [[augroup END]]
    end
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

nvim_lsp.emmet_ls.setup {
    on_attach = on_attach,
    filetypes = { "html", "javascriptreact", "typescriptreact" }
}

nvim_lsp.cssls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

nvim_lsp.cssmodules_ls.setup {
    on_attach = on_attach,
}

nvim_lsp.jsonls.setup {
    on_attach = on_attach,
}

require 'lspconfig'.tailwindcss.setup {}

nvim_lsp.tsserver.setup {
    on_attach = function(client)
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
    end,
    -- cmd = { 'typescript-language-server', '--stdio' },
    -- filetypes = {'javascript'}
}

nvim_lsp.rust_analyzer.setup {
    on_attach = function(client)
        client.server_capabilities.documentFormattingProvider = false
        client.server_capabilities.documentRangeFormattingProvider = false
    end,
    settings = {
        ['rust-analyzer'] = {
            checkOnSave = {
                allFeatures = true,
                overrideCommand = {
                    'cargo', 'clippy', '--workspace', '--message-format=json',
                    '--all-targets', '--all-features'
                }
            }
        }
    }
}

nvim_lsp.taplo.setup {
    on_attach = on_attach,
}

nvim_lsp.pyright.setup {
    on_attach = on_attach,
    settings = {
        python = {
            analysis = {
                autoImportCompletions = false,
            },
        }
    }
}

nvim_lsp.solc.setup {
    on_attach = on_attach,
}

nvim_lsp.sumneko_lua.setup {
    on_attach = on_attach,
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim", "use" }
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true)
            }
        }
    }
}

nvim_lsp.arduino_language_server.setup {
    cmd = {
        "arduino-language-server",
        "-cli-config", "C:/Users/hizam/AppData/Local/Arduino15/arduino-cli.yaml",
        "-fqbn", "arduino:avr:uno",
        "-cli", "arduino-cli",
        "-clangd", "clangd"
    }
}
