local overrides = require "custom.plugins.overrides"

return {
  ["williamboman/mason.nvim"] = {
    override_options = {
      ensure_installed = { "jdtls", "pyright", "lua-language-server", "clang_format", "autopep8", "stylua" },
    },
  },
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
  ["hrsh7th/cmp-cmdline"] = {},
  -- set cmdline
  ["hrsh7th/nvim-cmp"] = {
    override_options = function()
      require "custom.plugins.cmp"
    end,
  },
  -- 增量选择
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = {
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-w>",
          node_incremental = "<C-w>",
          node_decremental = "<BS>",
          -- scope_incremental = '<TAB>'
        },
      },
    },
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
}
