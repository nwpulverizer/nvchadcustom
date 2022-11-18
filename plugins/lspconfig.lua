-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
    --python
    "jedi_language_server",
    --Arduino
    "arduino_language_server",
    --Web stuff
    "astro",
    "cssls",
    "html",
    "tailwindcss",
    "tsserver",
    "json_lsp",
    -- lua
    "sumneko_lua",
    --Rust
    "rust_analyzer",
}
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
