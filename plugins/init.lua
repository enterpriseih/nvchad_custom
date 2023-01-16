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
  -- dashboard
  ["goolord/alpha-nvim"] = {
     disable = false,
  },
  -- java
  ["mfussenegger/nvim-jdtls"] = {},
  -- cmd for cmdline
  ['hrsh7th/cmp-cmdline'] = {},
  -- set cmdline
  ["hrsh7th/nvim-cmp"] = {
    override_options = function ()
      require "custom.plugins.cmp"
    end
  }
}
