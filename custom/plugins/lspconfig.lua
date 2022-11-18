-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
    "jedi_language_server",
    "arduino_language_server",
    "astro",
    "cssls",
    "html",
    "sumneko_lua",
    "rust_analyzer",
    "tailwindcss",
    "tsserver",
}
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
