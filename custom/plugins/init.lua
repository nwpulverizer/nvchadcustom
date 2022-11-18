-- We are just modifying lspconfig's packer definition table
-- Put this in your custom plugins section i.e M.plugins field 
return{
["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
},
["williamboman/mason.nvim"] = {
   override_options = {
      ensure_installed = {

        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "deno",
        "emmet-ls",
        "tailwindcss-language-server",
        "json-lsp",
        "jedi-language-server",
        "pyproject-flake8",
        "black",
        "astro-language-server",
        "prettierd",
        "eslint_d",

        -- shell
        "shfmt",
        "shellcheck",
        "bash-language-server",
        --rust
        "rustfmt",
        "rust-analyzer",
        -- arduino
        "arduino-language-server",
        --text
        "markdownlint",

      },
    },

  },
 ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require "custom.plugins.null-ls"
      end,
 },
    ["folke/which-key.nvim"] = {override_options = {{disable = false},}}


}
