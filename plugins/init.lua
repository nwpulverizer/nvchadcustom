-- We are just modifying lspconfig's packer definition table
-- Put this in your custom plugins section i.e M.plugins field 
local overrides = require "custom.plugins.overrides"
return{
["neovim/nvim-lspconfig"] = {
    opt = true,
    setup = function()
        require("core.lazy_load").on_file_open "nvim-lspconfig"
        end,
    config = function()
      require "plugins.lspconfig"
      require "custom.plugins.lspconfig"
    end,
},
["williamboman/mason.nvim"] = {
   override_options = overrides.mason,
  },

 ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require "custom.plugins.null-ls"
      end,
 },
    --Enabled whiched key
    ["folke/which-key.nvim"] = {disable = false,},


}
