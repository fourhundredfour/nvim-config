require("mason").setup()
require("mason-lspconfig").setup()

local lspconfig = require("lspconfig")
lspconfig.tsserver.setup{}
lspconfig.svelte.setup{}
lspconfig.gopls.setup{}