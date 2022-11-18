local M = {}

M.mason = {
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
}

return M
