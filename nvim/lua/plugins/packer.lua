local packer = require("packer")

return packer.startup(function()
    -- Packer
    use("wbthomason/packer.nvim")

    -- Speed up
    use("lewis6991/impatient.nvim")

    -- Indent
    use("lukas-reineke/indent-blankline.nvim")

    -- Surround
    use("kylechui/nvim-surround")

    -- Css color
    use("NvChad/nvim-colorizer.lua")

    -- Find & Replace in workspace
    use("nvim-pack/nvim-spectre")

    -- Theme
    use("olimorris/onedarkpro.nvim")
    use("xiyaowong/nvim-transparent")

    -- Highlight same text
    use("RRethy/vim-illuminate")

    -- Rainbow brackets
    use("p00f/nvim-ts-rainbow")

    -- Tree sistter
    use("nvim-treesitter/nvim-treesitter")
    use("nvim-treesitter/playground")

    -- Icons
    use("DaikyXendo/nvim-web-devicons")

    -- File browser
    use("nvim-tree/nvim-tree.lua")

    -- File search
    use("nvim-lua/plenary.nvim")
    use("nvim-telescope/telescope.nvim")
    use("nvim-telescope/telescope-media-files.nvim")

    -- Status bar
    use("akinsho/bufferline.nvim")
    use("nvim-lualine/lualine.nvim")

    -- Outline
    use('simrat39/symbols-outline.nvim')

    -- LSP
    use("neovim/nvim-lspconfig")
    use("onsails/lspkind.nvim")
    use("glepnir/lspsaga.nvim")
    use("ray-x/lsp_signature.nvim")

    -- Autocomplete
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-nvim-lua")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("hrsh7th/nvim-cmp")
    use { "tzachar/cmp-tabnine", run = "./install.sh" }

    -- Snippet
    use("L3MON4D3/LuaSnip")
    use("rafamadriz/friendly-snippets")

    -- LSP installer
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")
    use("j-hui/fidget.nvim")

    -- Rust
    use("Saecki/crates.nvim")
    use("simrat39/rust-tools.nvim")

    -- Close tag
    use("windwp/nvim-autopairs")
    use("windwp/nvim-ts-autotag")

    -- Formatter
    use("jose-elias-alvarez/null-ls.nvim")

    -- Comment
    use("numToStr/Comment.nvim")
    use("JoosepAlviste/nvim-ts-context-commentstring")

    -- Quick select
    use("phaazon/hop.nvim")

    -- Git
    use("tanvirtin/vgit.nvim")
    use("lewis6991/gitsigns.nvim")

    -- Debugger
    use("mfussenegger/nvim-dap")
    use("rcarriga/nvim-dap-ui")
end)
