local overrides = require "custom.plugins.overrides"

return {
  ["folke/which-key.nvim"] = {
    disable = false,
  },
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["mfussenegger/nvim-jdtls"] = {},
}
