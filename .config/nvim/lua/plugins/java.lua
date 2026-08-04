return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                jdtls = {
                    settings = {
                        java = {
                            format = {
                                enabled = true,
                                settings = {
                                    -- 1. POINT TO YOUR EXPORTED XML
                                    url = vim.fn.expand("~/.config/nvim/eclipse-formatter.xml"),
                                    profile = "IntelliJ IDEA",
                                },
                            },
                            -- 2. PREFER EXPRESSION LAMBDAS OVER BLOCKS
                            codeGeneration = {
                                useBlocks = false,
                            },
                        },
                    },
                },
            },
        },
    },
}
